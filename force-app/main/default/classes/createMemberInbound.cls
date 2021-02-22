global class createMemberInbound implements Messaging.InboundEmailHandler {
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope env) {
   
        Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
         
       // String myPlainText= '';    
           
       // myPlainText = email.plainTextBody; 
       
       // List<Member__c> memb = new List<Member__c>();
           
        try {
            Member__c mem = new Member__c(Name = email.Subject);
           
           // memb.add(mem);
           
            insert mem;   
            
            System.debug('New member: ' + mem);  
        }
           
        catch (Exception e) {
            System.debug('Error is: ' + e);
        }  
         
        result.success = true;
        
        return result;
    }
}