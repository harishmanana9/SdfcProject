public class ReviewManager {
    public boolean createReview(Id JobAppId) {
        Review__c newReview = new Review__c();
        newReview.Interviewer__c = 'a035g000001QnueAAC';
        newReview.Job_Application__c = JobAppId;
        
        Database.SaveResult sr = Database.insert(newReview);
        return sr.isSuccess();
    }
}