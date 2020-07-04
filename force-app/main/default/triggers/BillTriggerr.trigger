trigger BillTriggerr on Bill__c (before insert) {
    for(Bill__c b : Trigger.new)
    {
        b.Doctor_Bill__c=500;
        
    }

}