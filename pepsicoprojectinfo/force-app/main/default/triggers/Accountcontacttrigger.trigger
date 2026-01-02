trigger Accountcontacttrigger on Account (after insert) {
  if(Trigger.isAfter && Trigger.isInsert){
          AccountTriggercontactHandler.createRelatedContact(Trigger.New);
      }
}