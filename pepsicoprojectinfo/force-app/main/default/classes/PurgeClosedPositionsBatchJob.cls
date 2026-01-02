global class PurgeClosedPositionsBatchJob implements Database.Batchable<Sobject>
{
  global Database.QueryLocator start(Database.Batchablecontext bcontext)
  {
      string positionsquery = 'select id,Position_Name__c,delete_position__c from position__c where delete_position__c=true';
      return Database.getQueryLocator(positionsquery);
  }
  
  global void execute(Database.Batchablecontext bcontext,List<Sobject>recordstoprocess)
  {
      if(!recordstoprocess.isempty())
      {
          List<position__c>positiontodelete = (List<position__c>)recordstoprocess;
          
          Database.DeleteResult[] results = Database.delete(positiontodelete,false);
      }
  }
    
  global void finish(Database.Batchablecontext bcontext)
  {
      system.debug('Batch job id:'+bcontext.getJobId());
      
      AsyncApexJob jobDetails = [select id,status,totaljobitems,jobitemsprocessed,numberoferrors,createdby.email from AsyncApexjob where id=:bcontext.getJobId()];
      
      system.debug('Batch job status:'+jobDetails.status);
      
      Messagingutilityhelper.sendBatchJobstatusNotifications(jobDetails,'PurgeClosedPositionsBatchJob');
      
      
  }
}