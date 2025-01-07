/**
 * @description     Controller for the Destruction LWC
 * @author          Mark Meyer
 * @date            01/06/2025
 */
public with sharing class DestructionController {

    /**
     * @description  Custom Exception for this class
     */
    public class DestructionException extends Exception {}

    /**
     * @description     generate the selected files
     * @return map of file name to metadata
     */
    @AuraEnabled
    public static void getApex(){
        try {
            
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
            for(MetadataWrapper wrapper : wrapperList){
                String className = wrapper.mdName.removeEnd('Trigger');
                className = className + '_Test';
                metaDataMap.put('destructiveChanges.xml', TriggerFiles.getDestructiveChangesXml(wrapper));
                metaDataMap.put('package.xml', TriggerFiles.getPackageXml(wrapper, false));
                metaDataMap.put('testName', className+'');
            }
            return metaDataMap;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    /**
     * @description     deploy trigger using zip file
     * @param zipFile
     * @param testName
     * @return deployment id
     */
    @AuraEnabled
    public static String deployPackage(String zipFile, String testName){
        try {
            MetadataService.MetadataPort service = createService();
            MetadataService.DeployOptions deployOptions = new MetadataService.DeployOptions();
            deployOptions.testLevel = 'RunSpecifiedTests';
            deployOptions.runTests = new List<String>{ testName };
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
    public static Boolean checkAsyncRequest(String asyncId){
        try {
            MetadataService.MetadataPort service = createService();
            MetadataService.DeployResult deployResult = Test.isRunningTest() ? new MetadataService.DeployResult() : service.checkDeployStatus(asyncId, true);
            if (deployResult.details != null && deployResult.details.componentFailures != null){
                for (MetadataService.DeployMessage deployMessage : deployResult.details.componentFailures){
                    if (deployMessage.problem != null){
                        throw new DestructionException(deployMessage.fileName +
                        ' (Line: ' +
                        deployMessage.lineNumber +
                        ': Column:' +
                        deployMessage.columnNumber +
                        ') : ' +
                        deployMessage.problem);
                    }
                }
                MetadataService.RunTestsResult runTestResult = deployResult.details.runTestResult;
                if (runTestResult.numFailures > 0){
                    for (MetadataService.RunTestFailure testFailure : runTestResult.failures){
                        throw new DestructionException(
                            testFailure.name +
                            '.' +
                            testFailure.methodName +
                            ' ' +
                            testFailure.message +
                            ' ' +
                            testFailure.stackTrace
                        );
                    }
                }
                if (runTestResult.codeCoverageWarnings != null){
                    for (MetadataService.CodeCoverageWarning codeCoverageWarning : runTestResult.codeCoverageWarnings){
                        throw new DestructionException((codeCoverageWarning.namespace != null
                            ? codeCoverageWarning.namespace + '.'
                            : '') +
                            codeCoverageWarning.name +
                            ':' +
                            codeCoverageWarning.message
                        );
                    }
                }
            }
            return deployResult.done;
        } catch (Exception e) {
            if(!e.getMessage().contains('Apex type not found')) {
                throw new AuraHandledException(e.getMessage());
            } else {
                return true;
            }
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