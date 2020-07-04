public class TriggerHandler
{
    
         
    public static void OnBeforeInsert()
    {
        system.debug('Candidate Trigger On Before Insert');
    }

    public static void OnAfterInsert()
    {
        system.debug('Candidate Trigger On After Insert');
    }
  
    
    
}