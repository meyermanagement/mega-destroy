/**
 * @description     test for Destruction Controller
 * @author          Mark Meyer
 * @date            01/06/2025
 */
@isTest
public class DestructionControllerTest {

    /**
     * @description     test all methods
     */
    @isTest public static void testInit(){
        List<MetadataWrapper> wrappers = DestructionController.getApex();
        Map<String, String> fileMap = DestructionController.generateFiles(JSON.serialize(wrappers));
        String asyncId = DestructionController.deployPackage('');
        List<String> results = DestructionController.checkAsyncRequest(asyncId);
    }
}