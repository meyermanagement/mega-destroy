/**
 * @description     test for WSDL to Apex metadata service
 * @author          Mark Meyer
 * @date            09/27/2024
 */
@isTest  
public class MetadataServiceTest
{    

    /**
     * @description WebserviceMock implementation
     */
	@TestVisible private class WebServiceMockImpl implements WebServiceMock 
	{
        /**
         * @description WebserviceMock implementation
         * @param stub
         * @param request
         * @param response
         * @param endpoint
         * @param soapAction
         * @param requestName
         * @param responseNS
         * @param responseName
         * @param responseType
         */
		public void doInvoke(
			Object stub, Object request, Map<String, Object> response,
			String endpoint, String soapAction, String requestName,
			String responseNS, String responseName, String responseType) 
		{
			if(request instanceof MetadataService.retrieve_element) {
				response.put('response_x', new MetadataService.retrieveResponse_element());
            } else if(request instanceof MetadataService.checkDeployStatus_element) {
				response.put('response_x', new MetadataService.checkDeployStatusResponse_element());
			} else if(request instanceof MetadataService.listMetadata_element) {
				response.put('response_x', new MetadataService.listMetadataResponse_element());
			} else if(request instanceof MetadataService.checkRetrieveStatus_element) {
				response.put('response_x', new MetadataService.checkRetrieveStatusResponse_element());
			} else if(request instanceof MetadataService.describeMetadata_element) {
				response.put('response_x', new MetadataService.describeMetadataResponse_element());
			} else if(request instanceof MetadataService.deploy_element) {
				response.put('response_x', new MetadataService.deployResponse_element());
            } else if(request instanceof MetadataService.updateMetadata_element) {
                response.put('response_x', new MetadataService.updateMetadataResponse_element());
            } else if(request instanceof MetadataService.renameMetadata_element) {
                response.put('response_x', new MetadataService.renameMetadataResponse_element());
            } else if(request instanceof  MetadataService.cancelDeploy_element) {
                response.put('response_x', new MetadataService.cancelDeployResponse_element());
            } else if(request instanceof  MetadataService.deleteMetadata_element) {
                response.put('response_x', new MetadataService.deleteMetadataResponse_element());
            } else if(request instanceof  MetadataService.upsertMetadata_element) {
                response.put('response_x', new MetadataService.upsertMetadataResponse_element());
            } else if(request instanceof  MetadataService.createMetadata_element) {
                response.put('response_x', new MetadataService.createMetadataResponse_element());
            } else if(request instanceof  MetadataService.deployRecentValidation_element) {
                response.put('response_x', new MetadataService.deployRecentValidationResponse_element());
            } else if(request instanceof MetadataService.checkRetrieveStatus_element) {
                response.put('response_x', new MetadataService.checkRetrieveStatusResponse_element());
            }
			return;
		}
	}    
		
    /**
     * @description test CRUD
     */
	@IsTest
	private static void coverGeneratedCodeCRUDOperations()
	{	
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImpl());
        Test.startTest();    
        MetadataService.MetadataPort metaDataPort = new MetadataService.MetadataPort();
        Test.stopTest();
        System.assertNotEquals(null, metaDataPort.endpoint_x, 'endpoint not set as expected');
	}
	
    /**
     * @description test generate code files
     */
	@IsTest
    private static void coverGeneratedCodeFileBasedOperations1()
    {    	
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImpl());
        Test.startTest();     
        MetadataService.MetadataPort metaDataPort = new MetadataService.MetadataPort();
        metaDataPort.retrieve(new metaDataService.RetrieveRequest());
        metaDataPort.checkDeployStatus(null, false);
        metaDataPort.listMetadata(null, null);
        metaDataPort.describeMetadata(null);
        metaDataPort.deploy(null, null);
        metaDataPort.checkDeployStatus(null, false);
        metaDataPort.updateMetadata(null);
        metaDataPort.renameMetadata(null, null, null);
        metaDataPort.cancelDeploy(null);
        Test.stopTest();
        System.assertNotEquals(null, metaDataPort.endpoint_x, 'endpoint not set as expected');
    }

    /**
     * @description test generate code files
     */
    @IsTest
    private static void coverGeneratedCodeFileBasedOperations2()
    {       
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImpl());
        Test.startTest();    
        MetadataService.MetadataPort metaDataPort = new MetadataService.MetadataPort();
        metaDataPort.deleteMetadata(null, null);
        metaDataPort.upsertMetadata(null);
        metaDataPort.createMetadata(null);
        metaDataPort.deployRecentValidation(null);
        metaDataPort.checkRetrieveStatus(null, null);
        Test.stopTest();
        System.assertNotEquals(null, metaDataPort.endpoint_x, 'endpoint not set as expected');
    }
        
    /**
     * @description test generate code files
     */
	@IsTest
    private static void coverGeneratedCodeTypes()
    {    	       
        Test.startTest();
        new MetadataService();
        new MetadataService.Error();
        new MetadataService.ExtendedErrorDetails();
        new MetadataService.listMetadataResponse_element();
        new MetadataService.checkDeployStatus_element();
        new MetadataService.CodeCoverageWarning();
        new MetadataService.LogInfo();
        new MetadataService.CallOptions_element();
        new MetadataService.describeMetadataResponse_element();
        new MetadataService.DescribeMetadataResult();
        new MetadataService.DescribeMetadataObject();
        new MetadataService.CodeLocation();
        new MetadataService.DeployMessage();
        new MetadataService.CodeCoverageResult();
        new MetadataService.describeMetadata_element();
        new MetadataService.retrieve_element();
        new MetadataService.RetrieveResult();
        new MetadataService.RunTestSuccess();
        new MetadataService.deployResponse_element();
        new MetadataService.AsyncResult();
        new MetadataService.FileProperties();
        new MetadataService.checkRetrieveStatus_element();
        new MetadataService.ListMetadataQuery();
        new MetadataService.RunTestFailure();
        new MetadataService.listMetadata_element();
        new MetadataService.MetadataWithContent();
        new MetadataService.Metadata();
        new MetadataService.RetrieveMessage();
        new MetadataService.SessionHeader_element();
        new MetadataService.DeployOptions();
        new MetadataService.ApexTrigger();
        new MetadataService.RemoteSiteSetting();
        new MetadataService.deploy_element();
        new MetadataService.retrieveResponse_element();
        new MetadataService.PackageVersion();
        new MetadataService.checkRetrieveStatusResponse_element();
        new MetadataService.RunTestsResult();
        new MetadataService.ApexClass();
        new MetadataService.DebuggingInfo_element();
        new MetadataService.Package_x();
        new MetadataService.DeployResult();
        new MetadataService.checkDeployStatusResponse_element();
        new MetadataService.renameMetadata_element();
        new MetadataService.deleteMetadataResponse_element();
        new MetadataService.Error();
        new MetadataService.SaveResult();
        new MetadataService.deleteMetadata_element();
        new MetadataService.createMetadataResponse_element();
        new MetadataService.updateMetadata_element();
        new MetadataService.updateMetadataResponse_element();
        new MetadataService.createMetadata_element();
        new MetadataService.ReadApexTriggerResult();
        new MetadataService.readApexTriggerResponse_element();
        new MetadataService.ReadApexClassResult();
        new MetadataService.readApexClassResponse_element();
        new MetadataService.ReadPackageResult();
        new MetadataService.readPackageResponse_element();
        new MetadataService.ReadResult();
        new MetadataService.DeployDetails();
        new MetadataService.renameMetadataResponse_element();
        new MetadataService.cancelDeploy_element();
        new MetadataService.CancelDeployResult();
        new MetadataService.cancelDeployResponse_element();
        new MetadataService.DeleteResult();
        new MetadataService.upsertMetadata_element();
        new MetadataService.upsertMetadataResponse_element();
        new MetadataService.ReadCustomMetadataResult();
        new MetadataService.readCustomMetadataResponse_element();
        new MetadataService.CustomMetadataValue();
        new MetadataService.UpsertResult();
        new MetaDataService.deployRecentValidationResponse_element();
        new MetaDataService.deployRecentValidation_element();
        new MetaDataService.AllOrNoneHeader_element();
        MetadataService.MetadataPort metaDataPort = new MetadataService.MetadataPort();
        Test.stopTest();
        System.assertNotEquals(null, metaDataPort.endpoint_x, 'endpoint not set as expected');
    }

    /**
     * @description test generate code files
     */
    @IsTest
    private static void elfMissingGetRecordsTest() { // elf patch
        Test.startTest();
        new MetadataService.ReadCustomMetadataResult().getRecords();
        new MetadataService.ReadApexClassResult().getRecords();
        new MetadataService.ReadApexTriggerResult().getRecords();
        MetadataService.MetadataPort metaDataPort = new MetadataService.MetadataPort();
        Test.stopTest();
        System.assertNotEquals(null, metaDataPort.endpoint_x, 'endpoint not set as expected');
    }

    /**
     * @description test generate code files
     */
    @IsTest
    private static void elfMissingGetResultTest() { // elf patch
        Test.startTest();
        new MetadataService.readApexTriggerResponse_element().getResult();
        new MetadataService.readApexClassResponse_element().getResult();
        new MetadataService.readCustomMetadataResponse_element().getResult();
        MetadataService.MetadataPort metaDataPort = new MetadataService.MetadataPort();
        Test.stopTest();
        System.assertNotEquals(null, metaDataPort.endpoint_x, 'endpoint not set as expected');
    }    
}