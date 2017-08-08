@isTest
private class LightningViewOverrideControllerTest {

    static testMethod void testLightningViewOverrideController() {
        
        ListView listView = LightningViewOverrideController.getListViews('Account','All Accounts');
        system.assertNotEquals(null, listView);
        
        listView = LightningViewOverrideController.getListViews('Account','All');
        system.assertEquals(null, listView);
    }
}