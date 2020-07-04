trigger beforeUpdate on Candidate_Yourname__c (before update, after update) {
if(Trigger.isBefore)
{
if(Trigger.isUpdate)
{
  for(Candidate_Yourname__c c:Trigger.new)
  {
      
   c.Trigger_Status__c='Not updated Yet';

  }

}
}


}