/**
 * @description     wrapper for metadata records
 * @author          Mark Meyer
 * @date            09/27/2024
 */
public with sharing class MetadataWrapper {
    
    /**
     * @description mdName
     */
    @AuraEnabled public String mdName;
    /**
     * @description mdType
     */
    @AuraEnabled public String mdType;
    
}