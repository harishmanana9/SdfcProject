public class PositionManager {
    
    public boolean createPosition (String posName,String jobDesc)
    {
        
        Position__c pos= new Position__c(name=posName);
        pos.Job_Description__c=jobDesc;
        insert pos;
        return true;
        
    }
 
       public boolean deletePosition (id i)
    {
    Position__c pos= new Position__c();
        pos.id=i;
        delete pos;
        return true;
        
    }
       public boolean undeletePosition (id i)
    {
        
      Position__c pos= new Position__c();
        pos.id=i;
        undelete pos;
        return true;
        
    }

}