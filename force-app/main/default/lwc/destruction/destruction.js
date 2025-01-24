import { LightningElement, wire, track } from 'lwc';
import { refreshApex } from "@salesforce/apex";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
import { loadStyle } from 'lightning/platformResourceLoader';
import iconColor from '@salesforce/resourceUrl/iconColor';
import {JSZip} from './jszip/jszip';
import getApex from '@salesforce/apex/DestructionController.getApex';
import deployPackage from '@salesforce/apex/DestructionController.deployPackage';
import generateFiles from '@salesforce/apex/DestructionController.generateFiles';
import checkDeploymentStatus from '@salesforce/apex/DestructionController.checkAsyncRequest'; 
import MEGA_HISTORY_LOGO from "@salesforce/contentAssetUrl/MEGA_Main_Logo";
export default class Tracking extends LightningElement {

    _wiredData;
    loading;
    apexData;
    asyncId;
    intervalId;
    logoUrl = MEGA_HISTORY_LOGO;
    options = [];
    values = [];
    deploying = false;
    showDeployModal = false;
    wrappers = [];
    deployErrors = [];
    deploymentLabel = 'Confirm Destruction';

    mdColumns = [
        { label: 'Name', fieldName: 'mdName' },
        { label: 'Type', fieldName: 'mdType' }
    ];

    errorColumns = [
        { label: 'Error', fieldName: 'error' }
    ];

    get disableDeployButton() {
        return this.values.length == 0;
    }

    get confirmationRequired() {
        return this.deploying == false && !this.hasErrors;
    }

    get hasErrors() {
        return this.deployErrors.length > 0;
    }

    get listSize() {
        return this.options.length > 10 ? 10 : this.options.length;
    }

    get hasApex() {
        return this.options.length == 0;
    }
    
    connectedCallback(){
        if(this.apexData == undefined) this.loading = true;
        loadStyle(this, iconColor);
    }

    @wire(getApex)
    getData(result) {
        this._wiredData = result;
        if(result.data){
            this.apexData = result.data;
            this.options = [];
            this.values = [];
            const items = [];
            for (let item of this.apexData) {
                items.push({
                    label: item.mdName+'('+item.mdType+')',
                    value: item.mdName,
                });
            }
            this.options.push(...items);
        } else if (result.error) {
            console.log(result.error.body.message);
            this.dispatchEvent(
                new ShowToastEvent({
                    title: "An error has occurred. Please contact the system administrator for further assistance.",
                    message: result.error.body.message,
                    variant: "error",
                }),
            );
        }
        this.loading = false;
    }

    handleChange(event) {
        this.values = event.detail.value;
    }

    openModal(){
        let wrappers = [];
        for(let v of this.values){
            for(let d of this.apexData){
                if(v == d.mdName) wrappers.push(d);
            }
        }
        this.wrappers = wrappers;
        this.showDeployModal = true;
    }
    
    deployMetadata(){
        this.deploying = true;
        this.deploymentLabel = 'Destruction in progress...';
        generateFiles({ wrappers : JSON.stringify(this.wrappers) })
        .then((data) => {
            var fileMap = data;
            let zip = this.generateZIP(fileMap);
            this.deployFiles(zip);
        })
        .catch(error => {
            console.error(error);
            this.dispatchEvent(
                new ShowToastEvent({
                    title: "An error has occurred. Please contact the system administrator for further assistance.",
                    message: error.body.message,
                    variant: "error",
                }),
            );
            this.deploying = false;
            this.showDeployModal = false;
        }); 
    }

    generateZIP(fileMap){
        var zip = new JSZip();
        for(var file in fileMap){
            zip.file(file, fileMap[file]);
        }
        return zip.generate();
    }

    async deployFiles(zip){
        await deployPackage({zipFile : zip})
        .then((data) => {
            this.asyncId = data;
            this.interval = setInterval(() => {
                this.pollDeploymentStatus();
            }, 2000);
        })
        .catch(error => {
            console.error(error);
            this.dispatchEvent(
                new ShowToastEvent({
                    title: "An error has occurred. Please contact the system administrator for further assistance.",
                    message: error.body.message,
                    variant: "error",
                }),
            );
            this.deploying = false;
            this.showDeployModal = false;
        }); 
    }

    pollDeploymentStatus(){
        if(this.asyncId){
            checkDeploymentStatus({asyncId: this.asyncId})
            .then((data) => {
                if(data.length > 0){
                    clearInterval(this.interval);
                    if(data.includes('Success')){
                        this.handleSuccessfulDeployment();
                    } else {
                        let errors = [];
                        for(let err of data){
                            errors.push({error:err});
                        }
                        this.deployErrors = errors;
                        this.deploying = false;
                        this.deploymentLabel = 'Destruction Failed';
                    }
                }
            })
            .catch(error => {
                console.error(error);
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: "Deployment Error. Please review and try again.",
                        message: error.body.message,
                        variant: "error",
                    }),
                );
                clearInterval(this.interval);
                this.deploying = false;
            }); 
        } else {
            this.deploying = false;
        }
    }

    handleClose() {
        this.deploying = false;
        this.showDeployModal = false;
        refreshApex(this._wiredData);
        this.deployErrors = [];
        this.deploymentLabel = 'Confirm Destruction';
    }

    handleSuccessfulDeployment(){
        this.asyncId = undefined;
        refreshApex(this._wiredData);
        this.dispatchEvent(
            new ShowToastEvent({
                title: "Success!",
                message: `You have successfully removed the selected apex code from your organization!`,
                variant: "success",
            }),
        );
        this.deploying = false;
        this.showDeployModal = false;
    }

}