trigger jobTrigger1 on Job_Yourname__c (before insert) {
for(Job_Yourname__c obj: Trigger.new)
{
 obj.Company_Name__c='Enzigma Salesforce Company';
}

}