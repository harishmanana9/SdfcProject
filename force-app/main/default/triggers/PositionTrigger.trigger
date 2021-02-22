trigger PositionTrigger on Position__c (after update, before insert, after insert, before update)
{

    
    if(trigger.isBefore) 
    { if(trigger.isUpdate) { 
    List<Position__c> newPositionRec = trigger.new; 
    List<Position__c> oldPositionRec = trigger.old;    
        
    for(Position__c newRec : newPositionRec)
{
    
         for(Position__c oldRec : oldPositionRec)
{ 
    
    if (oldRec.Sub_Status__c=='cancelled'  && oldRec.Start_Date__c!=newRec.Start_Date__c )
    {
          system.debug('Kuch gadbad hai');
    }else {
        system.debug('Sab theek hai');
    }
  
   // system.debug('Before update old name - ' + oldRec.Name);
} 
    
    
  
} 
        

        
} 
                    
    }
    
     /*
    if(trigger.isAfter) 
    { if(trigger.isUpdate)
    { 
        List<Position__c> newPositionRec = trigger.new; 
        List<Position__c> oldPositionRec = trigger.old; 
    for(Position__c newRec : newPositionRec)
{ 
    system.debug('after update Id - ' + newRec.Id);
    system.debug('after update name - ' + newRec.Name);
} 
        
    for(Position__c oldRec : oldPositionRec)
{   system.debug('After update old  Id - ' + oldRec.Id);
    system.debug('after update old name - ' + oldRec.Name);
}         
        
    }    
    }
*/
}