trigger allJobTrigger on Job_Amit__c(before delete,after insert,after update)
{
    if(Trigger.isbefore && Trigger.isdelete)
    {
        jobTriggerHelper.beforeDelete(trigger.Old);
    }
        if(Trigger.isafter)
        {
            if(Trigger.isupdate)
            {
          //  jobTriggerHelper.afterUpdate();    /*T6*/
          //  jobTriggerHelper.afterInsertUpdate();
            }
            else
            {
            jobTriggerHelper.afterInsertUpdate();
            }    
        }
       
    
}