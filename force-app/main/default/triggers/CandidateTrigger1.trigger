trigger CandidateTrigger1 on Candidate_Yourname__c (before update) {

 Candidate_Yourname__c obj1=Trigger.new[0];
 obj1.Trigger_Status__c= 'Record Edited';
}