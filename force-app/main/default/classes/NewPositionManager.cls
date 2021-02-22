public class NewPositionManager implements PositionInterface{
public Id newPosition(String name, String description) {
return '';
}
public boolean modifyPositionDescription(Id recId, String newDescription) {

    update new Position__c(Id = recId, Job_description__c = newDescription);
    
return true; 
}
public boolean modifyPositionStartDate(Id recId, Date newDescription) {
return false;
}
public boolean modifyPositionPriority(Id recId, String newPriority){
return false;
}
public boolean modifyPositionDepartment(Id recId, String newDepartment){
return false;
}
}