trigger ApexTrigger2 on Job_Yourname__c (before update) {

for(Job_Yourname__c  obj1:Trigger.old)
{

for(Job_Yourname__c  obj2:Trigger.new)
{
 if(obj1.Name__c==obj2.Name__c && obj1.Company_Name__c!=obj2.Company_Name__c)
 {
   
   obj2.addError('You are not allowed to change the company name');
    
 }

}

}


}