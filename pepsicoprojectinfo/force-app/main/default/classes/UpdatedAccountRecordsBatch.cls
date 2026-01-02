global class UpdatedAccountRecordsBatch implements Database.Batchable<Sobject> 
{
  global Database.QueryLocator start(Database.Batchablecontext bContext)
  {
      string accountsquery = 'select id,name,rating,industry,annualrevenue from account where industry!=null AND rating!=null and active__c!=null';
      return database.getQueryLocator(accountsquery);
  }
    
  global void execute(Database.Batchablecontext bContext,List<Sobject>recordstoprocess)
  {
      if(!recordstoprocess.isempty())
      {
          List<Account>accountstoupdate = new List<Account>();
          
          for(Sobject sobj : recordstoprocess)
          {
              Account accrecord = (Account)sobj;
              accrecord.Rating = 'Hot';
              accrecord.Industry = 'Manufacturing';
              accrecord.Active__c = 'Yes';
              accountstoupdate.add(accrecord);
          }
          
          if(!accountstoupdate.isempty())
          {
              Database.update(accountstoupdate,false);
          }
      }
  }
    
  global void finish(Database.Batchablecontext bContext)
  {
      AsyncApexJob jobDetails = [select id,status,totaljobitems,jobitemsprocessed,NumberofErrors,CreatedBy.Email from AsyncApexJob where id=:bContext.getJobId()];
      
      system.debug('Job details:'+jobDetails);
      
      MessagingUtilityhelper.sendBatchJobstatusNotifications(jobDetails,'UpdatedAccountRecordsBatch');
  }
}