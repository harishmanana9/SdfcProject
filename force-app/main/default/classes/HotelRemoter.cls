global with sharing class HotelRemoter {

    @RemoteAction
    global static List<Hotel__c> findAll() {
        return [SELECT Id, Name, GeoLocation__Latitude__s, GeoLocation__Longitude__s
                    FROM Hotel__c];
    }

}