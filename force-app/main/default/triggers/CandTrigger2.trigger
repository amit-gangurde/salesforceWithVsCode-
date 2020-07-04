trigger CandTrigger2 on Candidate_Yourname__c (before insert) {

Candidate_Yourname__c obj2=trigger.new[0];
obj2.Full_Name__c=String.Valueof(obj2.First_Name__c)+' '+String.Valueof(obj2.Last_Name__c);
 obj2.Trigger_Status__c= 'Before Insert Done';

}