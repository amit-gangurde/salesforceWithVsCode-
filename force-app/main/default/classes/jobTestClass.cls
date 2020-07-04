@isTest
public class jobTestClass
{
    @isTest
    public static void insert_Job()
    {
       
        Job_Amit__c jobObj=new Job_Amit__c();
       
        jobObj.Number_of_Positions__c=5;
        jobObj.Job_Types__c='Manager';
        jobObj.Required_Skills__c='Team Player';
        jobObj.Qualification_Required__c='Bcom';
        jobObj.Certification_Required__c='PMP (Project Management Professional)';
        jobObj.Active__c=true;
        jobObj.Manager__c='0032x000005wBgF';
        jobObj.Name__c='ashish';
       
        test.startTest();
        insert jobObj;
            test.stopTest();
       
        List<Job_Amit__c> jobLst=[select Name__c from Job_Amit__c where Manager__c=:'0032x000005wBgF'];
        system.assertEquals(1, joblst.size());
    }
    
  @isTest
    public static void update_Job()
    {
        Job_Amit__c jobObj=new Job_Amit__c();
         List<Job_Amit__c> jobLst=  [select Number_of_Positions__c from Job_Amit__c where id='a0A2x000002X45u'];
        jobObj.Number_of_Positions__c=21;
        test.startTest();
        update jobLst;
        test.stopTest();
        
         jobLst.add(jobObj);
        system.assertEquals(1,jobLst.size() );
    }
    
    @isTest
    public static void deleteJob()
    {
     
        Job_Amit__c jobObj=new Job_Amit__c();       
        jobObj.Number_of_Positions__c=5;
        jobObj.Job_Types__c='Manager';
        jobObj.Required_Skills__c='Team Player';
        jobObj.Qualification_Required__c='Bcom';
        jobObj.Certification_Required__c='PMP (Project Management Professional)';
        jobObj.Active__c=true;
        jobObj.Manager__c='0032x000005wBgF';
        jobObj.Name__c='ashish';
        
         insert jobObj;
        
        test.startTest();
        database.DeleteResult result=database.delete(jobObj,false);
        test.stopTest();
        
        system.assertEquals('This Job is active and can not be deleted',result.getErrors()[0].getMessage());
    }


}