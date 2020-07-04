trigger beforeInsertrigger on Candidate_Amit__c (before insert) {
Candidate_Amit__c obj=Trigger.new[0];
if(Custom_trigger__c.getInstance().Bypass_Trigger__c)
{
    if(obj.Expected_Salary__c==null)
    {
     Trigger.new[0].addError('Salary Null Exception');
    }
    
    

}

}