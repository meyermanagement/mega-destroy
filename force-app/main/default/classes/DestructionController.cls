/**
 * @description     Controller for the Destruction LWC
 * @author          Mark Meyer
 * @date            01/06/2025
 */
public with sharing class DestructionController {

    /**
     * @description     generate the selected files
     * @return map of file name to metadata
     */
    @AuraEnabled(cacheable=true)
    public static List<MetadataWrapper> getApex(){
        try {
            List<MetadataWrapper> wrappers = new List<MetadataWrapper>();
            for(ApexTrigger at : [SELECT Id, NamespacePrefix, Name, Status FROM ApexTrigger WHERE NamespacePrefix = null WITH USER_MODE ORDER BY Name ]){
                MetadataWrapper mw = new MetadataWrapper();
                mw.mdName = at.Name;
                mw.mdType = 'ApexTrigger';
                wrappers.add(mw);
            }
            for(ApexClass at : [SELECT Id, NamespacePrefix, Name FROM ApexClass WHERE NamespacePrefix = null WITH USER_MODE ORDER BY Name ]){
                MetadataWrapper mw = new MetadataWrapper();
                mw.mdName = at.Name;
                mw.mdType = 'ApexClass';
                wrappers.add(mw);
            }
            return wrappers;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    /**
     * @description     generate the selected files
     * @param wrappers
     * @return map of file name to metadata
     */
    @AuraEnabled
    public static Map<String, String> generateFiles(String wrappers){
        try {
            Map<String, String> metaDataMap = new Map<String, String>();
            List<MetadataWrapper> wrapperList = (List<MetadataWrapper>)JSON.deserialize(wrappers, List<MetadataWrapper>.class);
            metaDataMap.put('destructiveChanges.xml', TriggerFiles.getDestructiveChangesXml(wrapperList));
            metaDataMap.put('package.xml', TriggerFiles.getPackageXml());
            return metaDataMap;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    /**
     * @description     deploy trigger using zip file
     * @param zipFile
     * @return deployment id
     */
    @AuraEnabled
    public static String deployPackage(String zipFile){
        try {
            MetadataService.MetadataPort service = createService();
            MetadataService.DeployOptions deployOptions = new MetadataService.DeployOptions();
            deployOptions.testLevel = 'RunLocalTests';
            //deployOptions.runTests = new List<String>();
            deployOptions.allowMissingFiles = false;
            deployOptions.autoUpdatePackage = false;
            deployOptions.checkOnly = false;
            deployOptions.ignoreWarnings = false;
            deployOptions.performRetrieve = false;
            deployOptions.purgeOnDelete = false;
            deployOptions.rollbackOnError = true;
            deployOptions.singlePackage = true;
            MetadataService.AsyncResult result = Test.isRunningTest() ? new MetadataService.AsyncResult() : service.deploy(zipFile, DeployOptions);
            return result.id;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    /**
     * @description     check deployment status
     * @param asyncId
     * @return isComplete
     */
    @AuraEnabled
    public static List<String> checkAsyncRequest(String asyncId){
        try {
            List<String> resultMessages = new List<String>();
            MetadataService.MetadataPort service = createService();
            MetadataService.DeployResult deployResult = Test.isRunningTest() ? new MetadataService.DeployResult() : service.checkDeployStatus(asyncId, true);
            if(deployResult.success != null && deployResult.success){
                resultMessages.add('Success');
            } else if (deployResult.details != null && deployResult.details.componentFailures != null){
                for (MetadataService.DeployMessage deployMessage : deployResult.details.componentFailures){
                    if (deployMessage.problem != null){
                        resultMessages.add(deployMessage.fileName +
                        ' (Line: ' +
                        deployMessage.lineNumber +
                        ': Column:' +
                        deployMessage.columnNumber +
                        ') : ' +
                        deployMessage.problem);
                    }
                }
            } else if(deployResult.details != null && deployResult.details.runTestResult.numFailures > 0) {
                MetadataService.RunTestsResult runTestResult = deployResult.details.runTestResult;
                if (runTestResult.numFailures > 0){
                    for (MetadataService.RunTestFailure testFailure : runTestResult.failures){
                        resultMessages.add(testFailure.name +
                        '.' +
                        testFailure.methodName +
                        ' ' +
                        testFailure.message +
                        ' ' +
                        testFailure.stackTrace);
                    }
                }
                if (runTestResult.codeCoverageWarnings != null){
                    for (MetadataService.CodeCoverageWarning codeCoverageWarning : runTestResult.codeCoverageWarnings){
                        resultMessages.add((codeCoverageWarning.namespace != null
                        ? codeCoverageWarning.namespace + '.'
                        : '') +
                        codeCoverageWarning.name +
                        ':' +
                        codeCoverageWarning.message
                        );
                    }
                }
            }
            return resultMessages;
        } catch (Exception e) {
            System.debug(e.getMessage());
            throw new AuraHandledException(e.getMessage());
        }
    }

    /**
     * @description     create the metadata service using the session id from vf page
     * @return metadataport
     */
    private static MetadataService.MetadataPort createService() {
        MetadataService.MetadataPort service = new MetadataService.MetadataPort();
        service.SessionHeader = new MetadataService.SessionHeader_element();
        service.SessionHeader.sessionId = getSessionIdFromVFPage();
        return service;
    }

      /**
     * @description     get the session id from a VF Page
     * @return session Id
     */
    private static String getSessionIdFromVFPage(){
        if(!Test.isRunningTest()){
            String content = Page.SessionIdPage.getContent().toString();
            Integer s = content.indexOf('Start_Of_Session_Id') + 'Start_Of_Session_Id'.length(),
                    e = content.indexOf('End_Of_Session_Id');
            return content.substring(s, e);
        } else {
            return null;
        }
    }
}