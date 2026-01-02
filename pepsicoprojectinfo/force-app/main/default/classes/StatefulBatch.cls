global class StatefulBatch implements Database.Batchable<Sobject>,Database.stateful
{
    global integer directcustomercount=0;
    
    global Database.QueryLocator start(Database.Batchablecontext bContext)
  {
     string query = 'select id,type,annualrevenue from account';
     return Database.getQueryLocator(query);
  }
    
  global void execute(Database.Batchablecontext bContext,List<Sobject>recordstoprocess)
  {
     List<Account>acclist = (List<Account>)recordstoprocess;
      
      for(Account acc : acclist)
      {
          if(acc.Type == 'Customer - Direct')
          {
              directcustomercount++;
          }
      }
  }
    
  global void finish(Database.Batchablecontext bContext)
  {
      AsyncApexJob jobDetails = [select id,status,totaljobitems,jobitemsprocessed,NumberofErrors,CreatedBy.Email from AsyncApexJob where id=:bContext.getJobId()];
      
      system.debug('Job details:'+jobDetails);
      
      MessagingUtilityhelper.sendBatchJobstatusNotifications(jobDetails,'StatefulBatch',directcustomercount);
  }
}