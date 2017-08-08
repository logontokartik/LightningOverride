public class LightningViewOverrideController {
    
    @AuraEnabled
    public static ListView getListViews(String objectName, String listViewName) {
        List<ListView> listViews = [SELECT Id, Name FROM ListView WHERE SobjectType = :objectName and Name = :listViewName];
		
		if (listViews != null && listViews.size()>0)
        	return listViews[0];
        else
            return null;
    }
    
}