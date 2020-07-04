@isTest
public class candidateTestClass
{
    @isTest
    public static void testing()
        {
                        Candidate_Amit__c obj=new Candidate_Amit__c();
                         obj.Salutation__c='Mr';
                        obj.First_Name__c='Pranav';
                         obj.Last_Name__c='Naik';
                        obj.Email__c='pn@gmail.com';
                        obj.Expected_Salary__c=121212;
                        obj.Job__c='a0A2x000002X45u';
                        obj.Country__c='India';
                        obj.State__c='Maharashtra';
                        obj.Status__c='Hired.';
        test.startTest();
        insert obj;
        test.stopTest();
        
        list<Candidate_Amit__c>lst=[SELECT Name FROM Candidate_Amit__c WHERE Job__c='a0A2x000002X45u'];
        System.assertEquals(1, lst.size());
            System.assertEquals(121212, obj.Expected_Salary__c);
        
      
    }

}