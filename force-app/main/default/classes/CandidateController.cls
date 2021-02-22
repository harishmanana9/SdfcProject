global with sharing class CandidateController {

    @RemoteAction
    global static List<Candidate__c> findAll() {
        return [SELECT Id, Name, Location__Latitude__s, Location__Longitude__s
                    FROM Candidate__c];
    }

}