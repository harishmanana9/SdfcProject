public class PositionWithJob {

    
    
 

    List<Position__c> positions;

    public List<Position__c> getPositions() {
        if(positions == null)
            positions = [SELECT name  ,( Select Name from Job_Applications__r) FROM position__c];
        return positions;
    }

}