public class CustomApex 
{

    
    public Candidate_Yourname__c Candidate{get; private set;}
    
    public CustomApex()
    {
        ID id=ApexPages.currentPage().getParameters().get('id');
        Candidate =(id==null)?new Candidate_Yourname__c():
        [SELECT	Salutation__c,First_Name__c,Last_Name__c,DOB__c,Email__c,Expected_Salary__c,Application_Date__c,Country__c,
         	State__c,Status__c,Jobs__c,	Contact__c from Candidate_Yourname__c where id=:id];
    }
    
    
    public PageReference save()
    {
        try
        {
            upsert(Candidate);
        }
        catch(System.DmlException ex)
        {
            ApexPages.addMessages(ex);
            return null;
        }
        
        PageReference redirectSuccess=new ApexPages.StandardController(Candidate).view();
        return(redirectSuccess);
    }
   }