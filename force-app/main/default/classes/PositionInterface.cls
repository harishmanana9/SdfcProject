public interface PositionInterface
{
  Id newPosition(String name, String description); 
   boolean modifyPositionDescription(Id recId, String newDescription);
  boolean modifyPositionStartDate(Id recId, Date newDate); 
  boolean modifyPositionPriority(Id recId, String newPriority);
  boolean modifyPositionDepartment(Id recId, String newDepartment); 
}