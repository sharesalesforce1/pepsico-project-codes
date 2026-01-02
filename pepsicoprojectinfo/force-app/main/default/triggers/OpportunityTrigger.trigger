trigger OpportunityTrigger on Opportunity (before insert,before update) {
    if(trigger.isBefore && (trigger.isInsert || trigger.isupdate))
    {
        OpportunityTriggerHandler.updateDescription(Trigger.New);
    }
}