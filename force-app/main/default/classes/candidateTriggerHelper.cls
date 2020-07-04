public class candidateTriggerHelper {
    
    public static void beforeInsert(list<Candidate_Amit__c> lstObj)
    {
       for(Candidate_Amit__c canObj:lstObj)
       {
          if(canObj.Expected_Salary__c==NULL)
          {
             Trigger.new[0].addError('Expected Salary field is missing');
          }
       }
    }
    
    public static void beforeInsertDate()
    {
       for(Candidate_Amit__c canObj:(list<Candidate_Amit__c>)Trigger.New)
        {
         canObj.Application_Date__c=System.today()+1;   
        }
    }
    
    
     public static void beforeInsertT1B()
    {
           for(Candidate_Amit__c canObj :(list<Candidate_Amit__c>) Trigger.New)
           {
              string jobname=canObj.Job__c;
       
               for(Job_Amit__c jobObj:[SELECT id from Job_Amit__c WHERE Active__c !=true])
                {
                  if(jobObj.id==jobname)
                  {
                  canObj.addError('This job is not active');
                  }
           
                }
          }
    }
    

}