/**
 * @description     Class containing metadata file configuration for Triggers
 * @author          Mark Meyer
 * @date            09/27/2024
 */
public with sharing class TriggerFiles {

    private static String componentApiVersion = '61.0';

    /**
     * @description     generates the package.xml file
     * @param wrapp
     * @param includeMembers
     * @return file string
     */
    public static String getPackageXml(MetadataWrapper wrapp, Boolean includeMembers) {
        String triggerName = wrapp.mdName;
        String className = wrapp.mdName.removeEnd('Trigger');
        className = className + '_Test';
          // package.xml for deploy
          if(includeMembers){
            return '<?xml version="1.0" encoding="UTF-8"?>' +
              '<Package xmlns="http://soap.sforce.com/2006/04/metadata">' +
              '<types>' +
              '<members>' +
              triggerName +
              '</members>' +
              '<name>ApexTrigger</name>' +
              '</types>' +
              '<types>' +
              '<members>' +
              className +
              '</members>' +
              '<name>ApexClass</name>' +
              '</types>' +
              '<version>' +
              componentApiVersion +
              '</version>' +
              '</Package>';
          } else {
            return '<?xml version="1.0" encoding="UTF-8"?>' +
              '<Package xmlns="http://soap.sforce.com/2006/04/metadata">' +
              '<version>' +
              componentApiVersion +
              '</version>' +
              '</Package>';
          }
      }
    
      /**
     * @description     generates the destructivechanges.xml file
     * @param wrapp
     * @return file string
     */
    public static String getDestructiveChangesXml(MetadataWrapper wrapp) {
        String triggerName = wrapp.mdName;
        String className = wrapp.mdName.removeEnd('Trigger');
        className = className + '_Test';
        return '<?xml version="1.0" encoding="UTF-8"?>' +
          '<Package xmlns="http://soap.sforce.com/2006/04/metadata">' +
          '<types>' +
          '<members>' +
          triggerName +
          '</members>' +
          '<name>ApexTrigger</name>' +
          '</types>' +
          '<types>' +
          '<members>' +
          className +
          '</members>' +
          '<name>ApexClass</name>' +
          '</types>' +
          '<version>' +
          componentApiVersion +
          '</version>' +
          '</Package>';
      }
    
}