trigger allCandidateTrigger on Candidate_Amit__c(before insert)
{
    if(trigger.isbefore && trigger.isinsert)
    {
      candidateTriggerHelper.beforeInsert(Trigger.New);
      candidateTriggerHelper.beforeInsertDate();
      candidateTriggerHelper.beforeInsertT1B();
    }

}