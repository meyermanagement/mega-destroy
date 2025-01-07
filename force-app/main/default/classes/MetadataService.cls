/**
 * @description     WSDL to Apex metadata service
 * @author          Mark Meyer
 * @date            09/27/2024
 */
public class MetadataService {
    
     /**
     * @description     MetadataService classes
     */
    public class SaveResult {
        public MetadataService.Error[] errors;
        public String fullName;
        public Boolean success;
        private String[] errors_type_info = new String[]{'errors','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] success_type_info = new String[]{'success','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'errors','fullName','success'};
    }

     /**
     * @description     MetadataService classes
     */
    public class ExtendedErrorDetails {
        public String extendedErrorCode;
        private String[] extendedErrorCode_type_info = new String[]{'extendedErrorCode','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'extendedErrorCode'};
    }

     /**
     * @description     MetadataService classes
     */
    public class UpsertResult {
        public Boolean created;
        public MetadataService.Error[] errors;
        public String fullName;
        public Boolean success;
        private String[] created_type_info = new String[]{'created','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] errors_type_info = new String[]{'errors','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] success_type_info = new String[]{'success','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'created','errors','fullName','success'};
    }
 
     /**
     * @description     MetadataService classes
     */
    public class retrieve_element {
        public MetadataService.RetrieveRequest retrieveRequest;
        private String[] retrieveRequest_type_info = new String[]{'retrieveRequest','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'retrieveRequest'};
    }

     /**
     * @description     MetadataService classes
     */
    public class RetrieveRequest {
        public Double apiVersion;
        public String[] packageNames;
        public Boolean singlePackage;
        public String[] specificFiles;
        public MetadataService.Package_x unpackaged;
        private String[] apiVersion_type_info = new String[]{'apiVersion','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] packageNames_type_info = new String[]{'packageNames','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] singlePackage_type_info = new String[]{'singlePackage','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] specificFiles_type_info = new String[]{'specificFiles','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] unpackaged_type_info = new String[]{'unpackaged','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'apiVersion','packageNames','singlePackage','specificFiles','unpackaged'};
    }

     /**
     * @description     MetadataService classes
     */
    public class DeleteResult {
        public MetadataService.Error[] errors;
        public String fullName;
        public Boolean success;
        private String[] errors_type_info = new String[]{'errors','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] success_type_info = new String[]{'success','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'errors','fullName','success'};
    }
 
     /**
     * @description     MetadataService classes
     */
    public class PackageVersion {
        public Integer majorNumber;
        public Integer minorNumber;
        public String namespace;
        private String[] majorNumber_type_info = new String[]{'majorNumber','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] minorNumber_type_info = new String[]{'minorNumber','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] namespace_type_info = new String[]{'namespace','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'majorNumber','minorNumber','namespace'};
    }

     /**
     * @description     MetadataService classes
     */
    public class DescribeMetadataObject {
        public String[] childXmlNames;
        public String directoryName;
        public Boolean inFolder;
        public Boolean metaFile;
        public String suffix;
        public String xmlName;
        private String[] childXmlNames_type_info = new String[]{'childXmlNames','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] directoryName_type_info = new String[]{'directoryName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] inFolder_type_info = new String[]{'inFolder','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] metaFile_type_info = new String[]{'metaFile','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] suffix_type_info = new String[]{'suffix','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] xmlName_type_info = new String[]{'xmlName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'childXmlNames','directoryName','inFolder','metaFile','suffix','xmlName'};
    }

     /**
     * @description     MetadataService classes
     */
    public class AllOrNoneHeader_element {
        public Boolean allOrNone;
        private String[] allOrNone_type_info = new String[]{'allOrNone','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'allOrNone'};
    }

     /**
     * @description     MetadataService classes
     */
    public class listMetadata_element {
        public MetadataService.ListMetadataQuery[] queries;
        public Double asOfVersion;
        private String[] queries_type_info = new String[]{'queries','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] asOfVersion_type_info = new String[]{'asOfVersion','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'queries','asOfVersion'};
    }

     /**
     * @description     MetadataService classes
     */
    public class CustomMetadata extends Metadata {
        public String type = 'CustomMetadata';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String description;
        public String label;
        public Boolean protected_x;
        public MetadataService.CustomMetadataValue[] values;
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] protected_x_type_info = new String[]{'protected','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] values_type_info = new String[]{'values','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'description','label','protected_x','values'};
    }

 
    /**
     * @description     MetadataService classes
     */
    public class deployResponse_element {
        public MetadataService.AsyncResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    /**
     * @description     MetadataService classes
     */
    public class ApexTrigger extends MetadataWithContent {
        public String type = 'ApexTrigger';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String content;
        private String[] content_type_info = new String[]{'content','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public Double apiVersion;
        public MetadataService.PackageVersion[] packageVersions;
        public String status;
        private String[] apiVersion_type_info = new String[]{'apiVersion','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] packageVersions_type_info = new String[]{'packageVersions','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] status_type_info = new String[]{'status','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName','content', 'apiVersion','packageVersions','status'};
    }

    /**
     * @description     MetadataService classes
     */
    public class DebuggingInfo_element {
        public String debugLog;
        private String[] debugLog_type_info = new String[]{'debugLog','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'debugLog'};
    }

    /**
     * @description     MetadataService classes
     */
    public class RunTestsResult {
        public String apexLogId;
        public MetadataService.CodeCoverageResult[] codeCoverage;
        public MetadataService.CodeCoverageWarning[] codeCoverageWarnings;
        public MetadataService.RunTestFailure[] failures;
        public Integer numFailures;
        public Integer numTestsRun;
        public MetadataService.RunTestSuccess[] successes;
        public Double totalTime;
        private String[] apexLogId_type_info = new String[]{'apexLogId','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] codeCoverage_type_info = new String[]{'codeCoverage','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] codeCoverageWarnings_type_info = new String[]{'codeCoverageWarnings','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] failures_type_info = new String[]{'failures','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] numFailures_type_info = new String[]{'numFailures','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] numTestsRun_type_info = new String[]{'numTestsRun','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] successes_type_info = new String[]{'successes','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] totalTime_type_info = new String[]{'totalTime','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'apexLogId','codeCoverage','codeCoverageWarnings','failures','numFailures','numTestsRun','successes','totalTime'};
    }

    /**
     * @description     MetadataService classes
     */
    public class DeployDetails {
        public MetadataService.DeployMessage[] componentFailures;
        public MetadataService.DeployMessage[] componentSuccesses;
        public MetadataService.RetrieveResult retrieveResult;
        public MetadataService.RunTestsResult runTestResult;
        private String[] componentFailures_type_info = new String[]{'componentFailures','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] componentSuccesses_type_info = new String[]{'componentSuccesses','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] retrieveResult_type_info = new String[]{'retrieveResult','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] runTestResult_type_info = new String[]{'runTestResult','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'componentFailures','componentSuccesses','retrieveResult','runTestResult'};
    }

    /**
     * @description     MetadataService classes
     */
    public class SessionHeader_element {
        public String sessionId;
        private String[] sessionId_type_info = new String[]{'sessionId','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'sessionId'};
    }

    /**
     * @description     MetadataService classes
     */
    public class deployRecentValidationResponse_element {
        public String result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    /**
     * @description     MetadataService classes
     */
    public class deployRecentValidation_element {
        public String validationId;
        private String[] validationId_type_info = new String[]{'validationId','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'validationId'};
    }

    /**
     * @description     MetadataService classes
     */
    public class DeployOptions {
        public Boolean allowMissingFiles;
        public Boolean autoUpdatePackage;
        public Boolean checkOnly;
        public Boolean ignoreWarnings;
        public Boolean performRetrieve;
        public Boolean purgeOnDelete;
        public Boolean rollbackOnError;
        public String[] runTests;
        public Boolean singlePackage;
        public String testLevel;
        private String[] allowMissingFiles_type_info = new String[]{'allowMissingFiles','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] autoUpdatePackage_type_info = new String[]{'autoUpdatePackage','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] checkOnly_type_info = new String[]{'checkOnly','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] ignoreWarnings_type_info = new String[]{'ignoreWarnings','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] performRetrieve_type_info = new String[]{'performRetrieve','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] purgeOnDelete_type_info = new String[]{'purgeOnDelete','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] rollbackOnError_type_info = new String[]{'rollbackOnError','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] runTests_type_info = new String[]{'runTests','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] singlePackage_type_info = new String[]{'singlePackage','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] testLevel_type_info = new String[]{'testLevel','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'allowMissingFiles','autoUpdatePackage','checkOnly','ignoreWarnings','performRetrieve','purgeOnDelete','rollbackOnError','runTests','singlePackage','testLevel'};
    }

    /**
     * @description     MetadataService classes
     */
    public class CustomMetadataValue {
        public String field;
        public String value;
        private String[] field_type_info = new String[]{'field','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] value_type_info = new String[]{'value','http://soap.sforce.com/2006/04/metadata',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'field','value'};
    }

    /**
     * @description     MetadataService classes
     */
    public class AsyncResult {
        public Boolean done;
        public String id;
        public String message;
        public String state;
        public String statusCode;
        private String[] done_type_info = new String[]{'done','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] id_type_info = new String[]{'id','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] message_type_info = new String[]{'message','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] state_type_info = new String[]{'state','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] statusCode_type_info = new String[]{'statusCode','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'done','id','message','state','statusCode'};
    }

    /**
     * @description     MetadataService classes
     */
    public class checkRetrieveStatusResponse_element {
        public MetadataService.RetrieveResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    /**
     * @description     MetadataService classes
     */
    public class retrieveResponse_element {
        public MetadataService.AsyncResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    /**
     * @description     MetadataService classes
     */
    public class upsertMetadataResponse_element {
        public MetadataService.UpsertResult[] result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    /**
     * @description     MetadataService classes
     */
    public class RunTestFailure {
        public String id;
        public String message;
        public String methodName;
        public String name;
        public String namespace;
        public String packageName;
        public Boolean seeAllData;
        public String stackTrace;
        public Double time_x;
        public String type_x;
        private String[] id_type_info = new String[]{'id','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] message_type_info = new String[]{'message','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] methodName_type_info = new String[]{'methodName','http://soap.sforce.com/2006/04/metadata',null,'1','1','true'};
        private String[] name_type_info = new String[]{'name','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] namespace_type_info = new String[]{'namespace','http://soap.sforce.com/2006/04/metadata',null,'1','1','true'};
        private String[] packageName_type_info = new String[]{'packageName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] seeAllData_type_info = new String[]{'seeAllData','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] stackTrace_type_info = new String[]{'stackTrace','http://soap.sforce.com/2006/04/metadata',null,'1','1','true'};
        private String[] time_x_type_info = new String[]{'time','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] type_x_type_info = new String[]{'type','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'id','message','methodName','name','namespace','packageName','seeAllData','stackTrace','time_x','type_x'};
    }

    /**
     * @description     MetadataService classes
     */
    public class Error {
        public MetadataService.ExtendedErrorDetails[] extendedErrorDetails;
        public String[] fields;
        public String message;
        public String statusCode;
        private String[] extendedErrorDetails_type_info = new String[]{'extendedErrorDetails','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] fields_type_info = new String[]{'fields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] message_type_info = new String[]{'message','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] statusCode_type_info = new String[]{'statusCode','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'extendedErrorDetails','fields','message','statusCode'};
    }

    /**
     * @description     MetadataService classes
     */
    public class updateMetadata_element {
        public MetadataService.Metadata[] metadata;
        private String[] metadata_type_info = new String[]{'metadata','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'metadata'};
    }

    /**
     * @description     MetadataService classes
     */
    public class CancelDeployResult {
        public Boolean done;
        public String id;
        private String[] done_type_info = new String[]{'done','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] id_type_info = new String[]{'id','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'done','id'};
    }

    /**
     * @description     MetadataService classes
     */
    public class upsertMetadata_element {
        public MetadataService.Metadata[] metadata;
        private String[] metadata_type_info = new String[]{'metadata','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'metadata'};
    }

    /**
     * @description     MetadataService classes
     */
    public class renameMetadata_element {
        public String type_x;
        public String oldFullName;
        public String newFullName;
        private String[] type_x_type_info = new String[]{'type','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] oldFullName_type_info = new String[]{'oldFullName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] newFullName_type_info = new String[]{'newFullName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'type_x','oldFullName','newFullName'};
    }
 
    /**
     * @description     MetadataService classes
     */
    public class ApexClass extends MetadataWithContent {
        public String type = 'ApexClass';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String content;
        private String[] content_type_info = new String[]{'content','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public Double apiVersion;
        public MetadataService.PackageVersion[] packageVersions;
        public String status;
        private String[] apiVersion_type_info = new String[]{'apiVersion','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] packageVersions_type_info = new String[]{'packageVersions','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] status_type_info = new String[]{'status','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName','content', 'apiVersion','packageVersions','status'};
    }

    /**
     * @description     MetadataService classes
     */
    public virtual class Metadata {
        public String fullName;
    }

    /**
     * @description     MetadataService classes
     */
    public class LogInfo {
        public String category;
        public String level;
        private String[] category_type_info = new String[]{'category','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] level_type_info = new String[]{'level','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'category','level'};
    }

    /**
     * @description     MetadataService classes
     */
    public class DebuggingHeader_element {
        public MetadataService.LogInfo[] categories;
        public String debugLevel;
        private String[] categories_type_info = new String[]{'categories','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] debugLevel_type_info = new String[]{'debugLevel','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'categories','debugLevel'};
    }

    /**
     * @description     MetadataService classes
     */
    public class describeMetadata_element {
        public Double asOfVersion;
        private String[] asOfVersion_type_info = new String[]{'asOfVersion','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'asOfVersion'};
    }

    /**
     * @description     MetadataService classes
     */
    public class RunTestSuccess {
        public String id;
        public String methodName;
        public String name;
        public String namespace;
        public Boolean seeAllData;
        public Double time_x;
        private String[] id_type_info = new String[]{'id','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] methodName_type_info = new String[]{'methodName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] name_type_info = new String[]{'name','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] namespace_type_info = new String[]{'namespace','http://soap.sforce.com/2006/04/metadata',null,'1','1','true'};
        private String[] seeAllData_type_info = new String[]{'seeAllData','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] time_x_type_info = new String[]{'time','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'id','methodName','name','namespace','seeAllData','time_x'};
    }

    /**
     * @description     MetadataService classes
     */
    public class ListMetadataQuery {
        public String folder;
        public String type_x;
        private String[] folder_type_info = new String[]{'folder','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] type_x_type_info = new String[]{'type','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'folder','type_x'};
    }

    /**
     * @description     MetadataService classes
     */
    public class createMetadataResponse_element {
        public MetadataService.SaveResult[] result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    /**
     * @description     MetadataService classes
     */
    public class CodeCoverageResult {
        public MetadataService.CodeLocation[] dmlInfo;
        public String id;
        public MetadataService.CodeLocation[] locationsNotCovered;
        public MetadataService.CodeLocation[] methodInfo;
        public String name;
        public String namespace;
        public Integer numLocations;
        public Integer numLocationsNotCovered;
        public MetadataService.CodeLocation[] soqlInfo;
        public MetadataService.CodeLocation[] soslInfo;
        public String type_x;
        private String[] dmlInfo_type_info = new String[]{'dmlInfo','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] id_type_info = new String[]{'id','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] locationsNotCovered_type_info = new String[]{'locationsNotCovered','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] methodInfo_type_info = new String[]{'methodInfo','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] name_type_info = new String[]{'name','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] namespace_type_info = new String[]{'namespace','http://soap.sforce.com/2006/04/metadata',null,'1','1','true'};
        private String[] numLocations_type_info = new String[]{'numLocations','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] numLocationsNotCovered_type_info = new String[]{'numLocationsNotCovered','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] soqlInfo_type_info = new String[]{'soqlInfo','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] soslInfo_type_info = new String[]{'soslInfo','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] type_x_type_info = new String[]{'type','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'dmlInfo','id','locationsNotCovered','methodInfo','name','namespace','numLocations','numLocationsNotCovered','soqlInfo','soslInfo','type_x'};
    }

    /**
     * @description     MetadataService classes
     */
    public class updateMetadataResponse_element {
        public MetadataService.SaveResult[] result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    /**
     * @description     MetadataService classes
     */
    public class deleteMetadata_element {
        public String type_x;
        public String[] fullNames;
        private String[] type_x_type_info = new String[]{'type','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] fullNames_type_info = new String[]{'fullNames','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'type_x','fullNames'};
    }

    /**
     * @description     MetadataService classes
     */
    public class CodeCoverageWarning {
        public String id;
        public String message;
        public String name;
        public String namespace;
        private String[] id_type_info = new String[]{'id','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] message_type_info = new String[]{'message','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] name_type_info = new String[]{'name','http://soap.sforce.com/2006/04/metadata',null,'1','1','true'};
        private String[] namespace_type_info = new String[]{'namespace','http://soap.sforce.com/2006/04/metadata',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'id','message','name','namespace'};
    }

    /**
     * @description     MetadataService classes
     */
    public interface IReadResult {
        /**
         * @description     getRecords
         */
        MetadataService.Metadata[] getRecords();
    }

    /**
     * @description     MetadataService classes
     */
    public interface IReadResponseElement {
        /**
         * @description     getResult
         */
        IReadResult getResult();
    }

    /**
     * @description     MetadataService classes
     */
    public class ReadApexClassResult implements IReadResult {
        public MetadataService.ApexClass[] records;
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
        /**
         * @description     getRecords
         */
        public MetadataService.Metadata[] getRecords() { return records; }
    }

    /**
     * @description     MetadataService classes
     */
    public class readApexClassResponse_element implements IReadResponseElement {
        public MetadataService.ReadApexClassResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
        /**
         * @description     getResult
         */
        public IReadResult getResult() { return result; }
    }

    /**
     * @description     MetadataService classes
     */
    public class ReadApexTriggerResult implements IReadResult {
        public MetadataService.ApexTrigger[] records;
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
        /**
         * @description     getRecords
         */
        public MetadataService.Metadata[] getRecords() { return records; }
    }

    /**
     * @description     MetadataService classes
     */
    public class readApexTriggerResponse_element implements IReadResponseElement {
        public MetadataService.ReadApexTriggerResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
        /**
         * @description     getResult
         */
        public IReadResult getResult() { return result; }
    }

    /**
     * @description     MetadataService classes
     */
    public class ReadPackageResult implements IReadResult {
        public MetadataService.Package_x[] records;
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
        /**
         * @description     getRecords
         */
        public MetadataService.Metadata[] getRecords() { return records; }
    }

    /**
     * @description     MetadataService classes
     */
    public class readPackageResponse_element implements IReadResponseElement {
        public MetadataService.ReadPackageResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
        /**
         * @description     getResult
         */
        public IReadResult getResult() { return result; }
    }
 
    /**
     * @description     MetadataService classes
     */
    public class ReadCustomMetadataResult implements IReadResult {
        public MetadataService.CustomMetadata[] records;
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
        /**
         * @description     getRecords
         */
        public MetadataService.Metadata[] getRecords() { return records; }
    }

    /**
     * @description     MetadataService classes
     */
    public class readCustomMetadataResponse_element implements IReadResponseElement {
        public MetadataService.ReadCustomMetadataResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
        /**
         * @description     getResult
         */
        public IReadResult getResult() { return result; }
    }

    /**
     * @description     MetadataService classes
     */
    public class FileProperties {
        public String createdById;
        public String createdByName;
        public DateTime createdDate;
        public String fileName;
        public String fullName;
        public String id;
        public String lastModifiedById;
        public String lastModifiedByName;
        public DateTime lastModifiedDate;
        public String manageableState;
        public String namespacePrefix;
        public String type_x;
        private String[] createdById_type_info = new String[]{'createdById','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] createdByName_type_info = new String[]{'createdByName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] createdDate_type_info = new String[]{'createdDate','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] fileName_type_info = new String[]{'fileName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] id_type_info = new String[]{'id','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] lastModifiedById_type_info = new String[]{'lastModifiedById','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] lastModifiedByName_type_info = new String[]{'lastModifiedByName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] lastModifiedDate_type_info = new String[]{'lastModifiedDate','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] manageableState_type_info = new String[]{'manageableState','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] namespacePrefix_type_info = new String[]{'namespacePrefix','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] type_x_type_info = new String[]{'type','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'createdById','createdByName','createdDate','fileName','fullName','id','lastModifiedById','lastModifiedByName','lastModifiedDate','manageableState','namespacePrefix','type_x'};
    }

    /**
     * @description     MetadataService classes
     */
    public class ReadResult {
        public MetadataService.Metadata[] records;
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }

    /**
     * @description     MetadataService classes
     */
    public class RetrieveResult {
        public Boolean done;
        public String errorMessage;
        public String errorStatusCode;
        public MetadataService.FileProperties[] fileProperties;
        public String id;
        public MetadataService.RetrieveMessage[] messages;
        public String status;
        public Boolean success;
        public String zipFile;
        private String[] done_type_info = new String[]{'done','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] errorMessage_type_info = new String[]{'errorMessage','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] errorStatusCode_type_info = new String[]{'errorStatusCode','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] fileProperties_type_info = new String[]{'fileProperties','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] id_type_info = new String[]{'id','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] messages_type_info = new String[]{'messages','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] status_type_info = new String[]{'status','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] success_type_info = new String[]{'success','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] zipFile_type_info = new String[]{'zipFile','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'done','errorMessage','errorStatusCode','fileProperties','id','messages','status','success','zipFile'};
    }

    /**
     * @description     MetadataService classes
     */
    public class cancelDeployResponse_element {
        public MetadataService.CancelDeployResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    /**
     * @description     MetadataService classes
     */
    public class DeployMessage {
        public Boolean changed;
        public Integer columnNumber;
        public String componentType;
        public Boolean created;
        public DateTime createdDate;
        public Boolean deleted;
        public String fileName;
        public String fullName;
        public String id;
        public Integer lineNumber;
        public String problem;
        public String problemType;
        public Boolean success;
        private String[] changed_type_info = new String[]{'changed','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] columnNumber_type_info = new String[]{'columnNumber','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] componentType_type_info = new String[]{'componentType','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] created_type_info = new String[]{'created','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] createdDate_type_info = new String[]{'createdDate','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] deleted_type_info = new String[]{'deleted','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] fileName_type_info = new String[]{'fileName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] id_type_info = new String[]{'id','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] lineNumber_type_info = new String[]{'lineNumber','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] problem_type_info = new String[]{'problem','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] problemType_type_info = new String[]{'problemType','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] success_type_info = new String[]{'success','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'changed','columnNumber','componentType','created','createdDate','deleted','fileName','fullName','id','lineNumber','problem','problemType','success'};
    }

    /**
     * @description     MetadataService classes
     */
    public class checkRetrieveStatus_element {
        public String asyncProcessId;
        public Boolean includeZip;
        private String[] asyncProcessId_type_info = new String[]{'asyncProcessId','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] includeZip_type_info = new String[]{'includeZip','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'asyncProcessId','includeZip'};
    }

    /**
     * @description     MetadataService classes
     */
    public class Package_x extends Metadata {
        public String type = 'Package_x';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String apiAccessLevel;
        public String description;
        public String namespacePrefix;
        public String packageType;
        public String postInstallClass;
        public String setupWeblink;
        public String uninstallClass;
        public String version;
        private String[] apiAccessLevel_type_info = new String[]{'apiAccessLevel','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] namespacePrefix_type_info = new String[]{'namespacePrefix','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] objectPermissions_type_info = new String[]{'objectPermissions','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] packageType_type_info = new String[]{'packageType','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] postInstallClass_type_info = new String[]{'postInstallClass','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] setupWeblink_type_info = new String[]{'setupWeblink','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] types_type_info = new String[]{'types','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] uninstallClass_type_info = new String[]{'uninstallClass','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] version_type_info = new String[]{'version','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'apiAccessLevel','description','namespacePrefix','objectPermissions','packageType','postInstallClass','setupWeblink','types','uninstallClass','version'};
    }

    /**
     * @description     MetadataService classes
     */
    public class DescribeMetadataResult {
        public MetadataService.DescribeMetadataObject[] metadataObjects;
        public String organizationNamespace;
        public Boolean partialSaveAllowed;
        public Boolean testRequired;
        private String[] metadataObjects_type_info = new String[]{'metadataObjects','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] organizationNamespace_type_info = new String[]{'organizationNamespace','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] partialSaveAllowed_type_info = new String[]{'partialSaveAllowed','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] testRequired_type_info = new String[]{'testRequired','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'metadataObjects','organizationNamespace','partialSaveAllowed','testRequired'};
    }

    /**
     * @description     MetadataService classes
     */
    public class deleteMetadataResponse_element {
        public MetadataService.DeleteResult[] result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    /**
     * @description     MetadataService classes
     */
    public class CodeLocation {
        public Integer column;
        public Integer line;
        public Integer numExecutions;
        public Double time_x;
        private String[] column_type_info = new String[]{'column','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] line_type_info = new String[]{'line','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] numExecutions_type_info = new String[]{'numExecutions','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] time_x_type_info = new String[]{'time','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'column','line','numExecutions','time_x'};
    }
    
    /**
     * @description     MetadataService classes
     */
    public class RemoteSiteSetting extends Metadata {
        public String type = 'RemoteSiteSetting';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String description;
        public Boolean disableProtocolSecurity;
        public Boolean isActive;
        public String url;
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] disableProtocolSecurity_type_info = new String[]{'disableProtocolSecurity','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] isActive_type_info = new String[]{'isActive','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] url_type_info = new String[]{'url','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'description','disableProtocolSecurity','isActive','url'};
    }

    /**
     * @description     MetadataService classes
     */
    public class RetrieveMessage {
        public String fileName;
        public String problem;
        private String[] fileName_type_info = new String[]{'fileName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] problem_type_info = new String[]{'problem','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'fileName','problem'};
    }
    
    /**
     * @description     MetadataService classes
     */
    public class deploy_element {
        public String ZipFile;
        public MetadataService.DeployOptions DeployOptions;
        private String[] ZipFile_type_info = new String[]{'ZipFile','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] DeployOptions_type_info = new String[]{'DeployOptions','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'ZipFile','DeployOptions'};
    }
    
    /**
     * @description     MetadataService classes
     */
    public class DeployResult {
        public String canceledBy;
        public String canceledByName;
        public Boolean checkOnly;
        public DateTime completedDate;
        public String createdBy;
        public String createdByName;
        public DateTime createdDate;
        public MetadataService.DeployDetails details;
        public Boolean done;
        public String errorMessage;
        public String errorStatusCode;
        public String id;
        public Boolean ignoreWarnings;
        public DateTime lastModifiedDate;
        public Integer numberComponentErrors;
        public Integer numberComponentsDeployed;
        public Integer numberComponentsTotal;
        public Integer numberTestErrors;
        public Integer numberTestsCompleted;
        public Integer numberTestsTotal;
        public Boolean rollbackOnError;
        public Boolean runTestsEnabled;
        public DateTime startDate;
        public String stateDetail;
        public String status;
        public Boolean success;
        private String[] canceledBy_type_info = new String[]{'canceledBy','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] canceledByName_type_info = new String[]{'canceledByName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] checkOnly_type_info = new String[]{'checkOnly','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] completedDate_type_info = new String[]{'completedDate','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] createdBy_type_info = new String[]{'createdBy','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] createdByName_type_info = new String[]{'createdByName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] createdDate_type_info = new String[]{'createdDate','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] details_type_info = new String[]{'details','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] done_type_info = new String[]{'done','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] errorMessage_type_info = new String[]{'errorMessage','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] errorStatusCode_type_info = new String[]{'errorStatusCode','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] id_type_info = new String[]{'id','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] ignoreWarnings_type_info = new String[]{'ignoreWarnings','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] lastModifiedDate_type_info = new String[]{'lastModifiedDate','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] numberComponentErrors_type_info = new String[]{'numberComponentErrors','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] numberComponentsDeployed_type_info = new String[]{'numberComponentsDeployed','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] numberComponentsTotal_type_info = new String[]{'numberComponentsTotal','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] numberTestErrors_type_info = new String[]{'numberTestErrors','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] numberTestsCompleted_type_info = new String[]{'numberTestsCompleted','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] numberTestsTotal_type_info = new String[]{'numberTestsTotal','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] rollbackOnError_type_info = new String[]{'rollbackOnError','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] runTestsEnabled_type_info = new String[]{'runTestsEnabled','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] startDate_type_info = new String[]{'startDate','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] stateDetail_type_info = new String[]{'stateDetail','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] status_type_info = new String[]{'status','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] success_type_info = new String[]{'success','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'canceledBy','canceledByName','checkOnly','completedDate','createdBy','createdByName','createdDate','details','done','errorMessage','errorStatusCode','id','ignoreWarnings','lastModifiedDate','numberComponentErrors','numberComponentsDeployed','numberComponentsTotal','numberTestErrors','numberTestsCompleted','numberTestsTotal','rollbackOnError','runTestsEnabled','startDate','stateDetail','status','success'};
    }

    /**
     * @description     MetadataService classes
     */
    public class createMetadata_element {
        public MetadataService.Metadata[] metadata;
        private String[] metadata_type_info = new String[]{'metadata','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'metadata'};
    }
    
    /**
     * @description     MetadataService classes
     */
    public class describeMetadataResponse_element {
        public MetadataService.DescribeMetadataResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    
    /**
     * @description     MetadataService classes
     */
    public class checkDeployStatus_element {
        public String asyncProcessId;
        public Boolean includeDetails;
        private String[] asyncProcessId_type_info = new String[]{'asyncProcessId','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] includeDetails_type_info = new String[]{'includeDetails','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'asyncProcessId','includeDetails'};
    }

    /**
     * @description     MetadataService classes
     */
    public virtual class MetadataWithContent extends Metadata {
        public String content;
    }
    
    /**
     * @description     MetadataService classes
     */
    public class checkDeployStatusResponse_element {
        public MetadataService.DeployResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    
    /**
     * @description     MetadataService classes
     */
    public class listMetadataResponse_element {
        public MetadataService.FileProperties[] result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    /**
     * @description     MetadataService classes
     */
    public class renameMetadataResponse_element {
        public MetadataService.SaveResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    /**
     * @description     MetadataService classes
     */
    public class cancelDeploy_element {
        public String String_x;
        private String[] String_x_type_info = new String[]{'String','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'String_x'};
    }

    /**
     * @description     MetadataService classes
     */
    public class CallOptions_element {
        public String client;
        private String[] client_type_info = new String[]{'client','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'client'};
    }
    
    /**
     * @description     MetadataService classes
     */
    public class MetadataPort {
        public String endpoint_x = URL.getOrgDomainUrl().toExternalForm() + '/services/Soap/m/58.0';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        public MetadataService.SessionHeader_element SessionHeader;
        public MetadataService.DebuggingInfo_element DebuggingInfo;
        public MetadataService.DebuggingHeader_element DebuggingHeader;
        public MetadataService.CallOptions_element CallOptions;
        public MetadataService.AllOrNoneHeader_element AllOrNoneHeader;
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/2006/04/metadata';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/2006/04/metadata';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/2006/04/metadata';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/2006/04/metadata';
        private String AllOrNoneHeader_hns = 'AllOrNoneHeader=http://soap.sforce.com/2006/04/metadata';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata', 'MetadataService'};

        /**
         * @description     MetadataService MetadataPort methods
         * @param type_x
         * @param fullNames
         * @return DeleteResult
         */
        public MetadataService.DeleteResult[] deleteMetadata(String type_x,String[] fullNames) {
            MetadataService.deleteMetadata_element request_x = new MetadataService.deleteMetadata_element();
            request_x.type_x = type_x;
            request_x.fullNames = fullNames;
            MetadataService.deleteMetadataResponse_element response_x;
            Map<String, MetadataService.deleteMetadataResponse_element> response_map_x = new Map<String, MetadataService.deleteMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'deleteMetadata',
              'http://soap.sforce.com/2006/04/metadata',
              'deleteMetadataResponse',
              'MetadataService.deleteMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }

        /**
         * @description     MetadataService MetadataPort methods
         * @param type_x
         * @param oldFullName
         * @param newFullName
         * @return SaveResult
         */
        public MetadataService.SaveResult renameMetadata(String type_x,String oldFullName,String newFullName) {
            MetadataService.renameMetadata_element request_x = new MetadataService.renameMetadata_element();
            request_x.type_x = type_x;
            request_x.oldFullName = oldFullName;
            request_x.newFullName = newFullName;
            MetadataService.renameMetadataResponse_element response_x;
            Map<String, MetadataService.renameMetadataResponse_element> response_map_x = new Map<String, MetadataService.renameMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'renameMetadata',
              'http://soap.sforce.com/2006/04/metadata',
              'renameMetadataResponse',
              'MetadataService.renameMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }

        /**
         * @description     MetadataService MetadataPort methods
         * @param metadata
         * @return SaveResult
         */
        public MetadataService.SaveResult[] updateMetadata(MetadataService.Metadata[] metadata) {
            MetadataService.updateMetadata_element request_x = new MetadataService.updateMetadata_element();
            request_x.metadata = metadata;
            MetadataService.updateMetadataResponse_element response_x;
            Map<String, MetadataService.updateMetadataResponse_element> response_map_x = new Map<String, MetadataService.updateMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'updateMetadata',
              'http://soap.sforce.com/2006/04/metadata',
              'updateMetadataResponse',
              'MetadataService.updateMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }

        /**
         * @description     MetadataService MetadataPort methods
         * @param asOfVersion
         * @return DescribeMetadataResult
         */
        public MetadataService.DescribeMetadataResult describeMetadata(Double asOfVersion) {
            MetadataService.describeMetadata_element request_x = new MetadataService.describeMetadata_element();
            request_x.asOfVersion = asOfVersion;
            MetadataService.describeMetadataResponse_element response_x;
            Map<String, MetadataService.describeMetadataResponse_element> response_map_x = new Map<String, MetadataService.describeMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'describeMetadata',
              'http://soap.sforce.com/2006/04/metadata',
              'describeMetadataResponse',
              'MetadataService.describeMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }

        /**
         * @description     MetadataService MetadataPort methods
         * @param asyncProcessId
         * @param includeDetails
         * @return DeployResult
         */
        public MetadataService.DeployResult checkDeployStatus(String asyncProcessId,Boolean includeDetails) {
            MetadataService.checkDeployStatus_element request_x = new MetadataService.checkDeployStatus_element();
            request_x.asyncProcessId = asyncProcessId;
            request_x.includeDetails = includeDetails;
            MetadataService.checkDeployStatusResponse_element response_x;
            Map<String, MetadataService.checkDeployStatusResponse_element> response_map_x = new Map<String, MetadataService.checkDeployStatusResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'checkDeployStatus',
              'http://soap.sforce.com/2006/04/metadata',
              'checkDeployStatusResponse',
              'MetadataService.checkDeployStatusResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }

        /**
         * @description     MetadataService MetadataPort methods
         * @param asyncProcessId
         * @param includeZip
         * @return RetrieveResult
         */
        public MetadataService.RetrieveResult checkRetrieveStatus(String asyncProcessId,Boolean includeZip) {
            MetadataService.checkRetrieveStatus_element request_x = new MetadataService.checkRetrieveStatus_element();
            request_x.asyncProcessId = asyncProcessId;
            request_x.includeZip = includeZip;
            MetadataService.checkRetrieveStatusResponse_element response_x;
            Map<String, MetadataService.checkRetrieveStatusResponse_element> response_map_x = new Map<String, MetadataService.checkRetrieveStatusResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'checkRetrieveStatus',
              'http://soap.sforce.com/2006/04/metadata',
              'checkRetrieveStatusResponse',
              'MetadataService.checkRetrieveStatusResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }

        /**
         * @description     MetadataService MetadataPort methods
         * @param retrieveRequest
         * @return AsyncResult
         */
        public MetadataService.AsyncResult retrieve(MetadataService.RetrieveRequest retrieveRequest) {
            MetadataService.retrieve_element request_x = new MetadataService.retrieve_element();
            request_x.retrieveRequest = retrieveRequest;
            MetadataService.retrieveResponse_element response_x;
            Map<String, MetadataService.retrieveResponse_element> response_map_x = new Map<String, MetadataService.retrieveResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'retrieve',
              'http://soap.sforce.com/2006/04/metadata',
              'retrieveResponse',
              'MetadataService.retrieveResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }

        /**
         * @description     MetadataService MetadataPort methods
         * @param String_x
         * @return CancelDeployResult
         */
        public MetadataService.CancelDeployResult cancelDeploy(String String_x) {
            MetadataService.cancelDeploy_element request_x = new MetadataService.cancelDeploy_element();
            request_x.String_x = String_x;
            MetadataService.cancelDeployResponse_element response_x;
            Map<String, MetadataService.cancelDeployResponse_element> response_map_x = new Map<String, MetadataService.cancelDeployResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'cancelDeploy',
              'http://soap.sforce.com/2006/04/metadata',
              'cancelDeployResponse',
              'MetadataService.cancelDeployResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }

        /**
         * @description     MetadataService MetadataPort methods
         * @param validationId
         * @return response_x.result
         */
        public String deployRecentValidation(String validationId) {
            MetadataService.deployRecentValidation_element request_x = new MetadataService.deployRecentValidation_element();
            request_x.validationId = validationId;
            MetadataService.deployRecentValidationResponse_element response_x;
            Map<String, MetadataService.deployRecentValidationResponse_element> response_map_x = new Map<String, MetadataService.deployRecentValidationResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'deployRecentValidation',
              'http://soap.sforce.com/2006/04/metadata',
              'deployRecentValidationResponse',
              'MetadataService.deployRecentValidationResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        
        /**
         * @description     MetadataService MetadataPort methods
         * @param metadata
         * @return SaveResult[]
         */
        public MetadataService.SaveResult[] createMetadata(MetadataService.Metadata[] metadata) {
            MetadataService.createMetadata_element request_x = new MetadataService.createMetadata_element();
            request_x.metadata = metadata;
            MetadataService.createMetadataResponse_element response_x;
            Map<String, MetadataService.createMetadataResponse_element> response_map_x = new Map<String, MetadataService.createMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'createMetadata',
              'http://soap.sforce.com/2006/04/metadata',
              'createMetadataResponse',
              'MetadataService.createMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }

        /**
         * @description     MetadataService MetadataPort methods
         * @param ZipFile
         * @param DeployOptions
         * @return AsyncResult
         */
        public MetadataService.AsyncResult deploy(String ZipFile,MetadataService.DeployOptions DeployOptions) {
            MetadataService.deploy_element request_x = new MetadataService.deploy_element();
            request_x.ZipFile = ZipFile;
            request_x.DeployOptions = DeployOptions;
            MetadataService.deployResponse_element response_x;
            Map<String, MetadataService.deployResponse_element> response_map_x = new Map<String, MetadataService.deployResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'deploy',
              'http://soap.sforce.com/2006/04/metadata',
              'deployResponse',
              'MetadataService.deployResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }

        /**
         * @description     MetadataService MetadataPort methods
         * @param metadata
         * @return UpsertResult[]
         */
        public MetadataService.UpsertResult[] upsertMetadata(MetadataService.Metadata[] metadata) {
            MetadataService.upsertMetadata_element request_x = new MetadataService.upsertMetadata_element();
            request_x.metadata = metadata;
            MetadataService.upsertMetadataResponse_element response_x;
            Map<String, MetadataService.upsertMetadataResponse_element> response_map_x = new Map<String, MetadataService.upsertMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'upsertMetadata',
              'http://soap.sforce.com/2006/04/metadata',
              'upsertMetadataResponse',
              'MetadataService.upsertMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }

        /**
         * @description     MetadataService MetadataPort methods
         * @param queries
         * @param asOfVersion
         * @return FileProperties[]
         */
        public MetadataService.FileProperties[] listMetadata(MetadataService.ListMetadataQuery[] queries,Double asOfVersion) {
            MetadataService.listMetadata_element request_x = new MetadataService.listMetadata_element();
            request_x.queries = queries;
            request_x.asOfVersion = asOfVersion;
            MetadataService.listMetadataResponse_element response_x;
            Map<String, MetadataService.listMetadataResponse_element> response_map_x = new Map<String, MetadataService.listMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'listMetadata',
              'http://soap.sforce.com/2006/04/metadata',
              'listMetadataResponse',
              'MetadataService.listMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
    }
    
}