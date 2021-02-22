trigger CheckJobApplication on Job_Application__c (before update,after update) {
    if(trigger.isUpdate){
       
        if(trigger.isAfter){
            List<job_application__c> jb = trigger.new;
            for(job_application__c jba : jb)
            {
                if(jba.Total_reviews__c==0)
                    jba.addError('Can not be offered');
                
                if(jba.Total_reviews__c>0){    
                if((jba.Total_reviews__c<=1 || (jba.Total_Experience_Skills__c/jba.Total_reviews__c)<=4) && jba.Status__c=='Offered'){
                    jba.addError('Can not be offered');
                    
                }
                
            }
              
            }
            
        }
       
    }
}