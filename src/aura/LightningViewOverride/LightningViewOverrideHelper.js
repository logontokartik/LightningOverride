({
	gotoList : function (component, event) {
    var action = component.get("c.getListViews");
    var objectName = component.get("v.objectName");
    var listViewName = component.get("v.listViewName");
        console.log(listViewName);
        console.log(objectName);
    action.setParams({
            "objectName":objectName,
            "listViewName":listViewName
    });
    action.setCallback(this, function(response){
        var state = response.getState();
        if (state === "SUCCESS") {
            var listView = response.getReturnValue();
            var navEvent = $A.get("e.force:navigateToList");
            navEvent.setParams({
                "listViewId": listView.Id,
                "listViewName": null,
                "scope": objectName
            });
            navEvent.fire();
        }
    });
    $A.enqueueAction(action);
}})