trigger combinedTrigger on Candidate_Yourname__c (after insert, after update, before insert, before update) {
 

if( Trigger.isInsert )

    {

        if(Trigger.isBefore)
        {
            TriggerHandler.OnBeforeInsert();

        }

        else
     {
        TriggerHandler.OnAfterInsert();

      }

    }



}