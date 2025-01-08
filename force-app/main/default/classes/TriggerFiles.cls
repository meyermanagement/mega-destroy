/**
 * @description     Class containing metadata file configuration for Triggers
 * @author          Mark Meyer
 * @date            09/27/2024
 */
public with sharing class TriggerFiles {

    private static String componentApiVersion = '61.0';

    /**
     * @description     generates the package.xml file
     * @return file string
     */
    public static String getPackageXml() {
        // package.xml for deploy
        return '<?xml version="1.0" encoding="UTF-8"?>' +
            '<Package xmlns="http://soap.sforce.com/2006/04/metadata">' +
            '<version>' +
            componentApiVersion +
            '</version>' +
            '</Package>';
    }

    /**
    * @description     generates the destructivechanges.xml file
    * @param wrapp
    * @return file string
    */
    public static String getDestructiveChangesXml(List<MetadataWrapper> wrappers) {
        String xmlfile = '<?xml version="1.0" encoding="UTF-8"?>' +
            '<Package xmlns="http://soap.sforce.com/2006/04/metadata">';
        Map<String, List<String>> typeToNameMap = new Map<String, List<String>>();
        for(MetadataWrapper wrapp : wrappers){
            if(typeToNameMap.get(wrapp.mdType) == null) typeToNameMap.put(wrapp.mdType, new List<String>());
            typeToNameMap.get(wrapp.mdType).add(wrapp.mdName);
        }
        for(String key : typeToNameMap.keySet()){
            xmlfile += '<types>';
            for(String fileName : typeToNameMap.get(key)){
                xmlfile += '<members>' + fileName + '</members>';
            }
            xmlfile += '<name>'+key+'</name>' + '</types>';
        }
        xmlfile += '<version>' +
            componentApiVersion +
            '</version>' +
            '</Package>';
            System.debug(xmlfile);
        return xmlfile;
    }
}