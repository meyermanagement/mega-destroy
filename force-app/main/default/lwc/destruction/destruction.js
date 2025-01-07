import { LightningElement, wire } from 'lwc';
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
    
    connectedCallback(){
        if(this.apexData == undefined) this.loading = true;
        loadStyle(this, iconColor);
    }

    @wire(getApex)
    getData(result) {
        this._wiredData = result;
        if(result.data){
            this.apexData = result.data;
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

    
    deployMetadata(){
        this.loading = true;
        let wrappers = [];
        generateFiles({ wrappers : JSON.stringify(wrappers) })
        .then((data) => {
            var fileMap = data;
            var testName = data['testName'];
            delete fileMap['testName'];
            let zip = this.generateZIP(fileMap);
            this.deployFiles(zip, testName);
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
            this.loading = false;
        }); 
    }

    generateZIP(fileMap){
        var zip = new JSZip();
        for(var file in fileMap){
            zip.file(file, fileMap[file]);
        }
        return zip.generate();
    }

    async deployFiles(zip, testName){
        await deployPackage({zipFile : zip, testName : testName})
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
            this.loading = false;
        }); 
    }

    pollDeploymentStatus(){
        if(this.asyncId){
            checkDeploymentStatus({asyncId: this.asyncId})
            .then((data) => {
                if(data){
                    clearInterval(this.interval);
                    this.handleSuccessfulDeployment();
                }
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
                clearInterval(this.interval);
                this.loading = false;
            }); 
        } else {
            this.loading = false;
        }
    }

    handleSuccessfulDeployment(){
        this.asyncId = undefined;
        refreshApex(this._wiredData);
        this.dispatchEvent(
            new ShowToastEvent({
                title: "Success!",
                message: `You have successfully Removed the selected Apex from your organization!`,
                variant: "success",
            }),
        );
        this.loading = false;
    }

}