trigger PositionTriggerErrorBox on Position__c ( before insert,after update, after insert, before update) {
    
    
if ( trigger.isBefore)
{
    if(trigger.isUpdate)
    {
        /*
        List<Position__c> PositionList =trigger.new;
        
        for ( Position__c newRec :PositionList )
            newRec.addError('There is some error in showing');

*/
    }
}
}