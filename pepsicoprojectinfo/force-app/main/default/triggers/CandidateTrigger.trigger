trigger CandidateTrigger on Candidate__c (after insert,after update) 
{
  candidatetriggerhandler.insertinformation(trigger.new);
}