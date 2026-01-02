Global class HiringManagerUpdateBatch implements Database.Batchable<SObject>
{
  Global Database.QueryLocator Start(Database.BatchableContext bContext)
    {
        string hrRecordsQuery = 'Select id,hrname__c, hremail__c,hrphone__c,Location__c from Hiringmanager__c';
        return Database.getQueryLocator(hrRecordsQuery);
    }
    
    Global void Execute(Database.BatchableContext bContext, List<SObject> recordsToProcess)
    {
        if(! recordsToProcess.isEmpty())
        {
            List<Hiringmanager__c> hrRecordsToUpdate = new List<Hiringmanager__c>();
            List<ID> hrRecordsToDelete = new List<ID>();
            
            for(SObject obj : recordsToProcess)
            {
                Hiringmanager__c hrRecord = (Hiringmanager__c) obj;
                
                if(hrRecord.hremail__c != null)
                {
                    hrRecord.Location__c = 'Hyderabad';
                  hrRecord.hrphone__c = '5555888899';
                
                  hrRecordsToUpdate.Add(hrRecord);
                }
                  
            }
            
            if(! hrRecordsToUpdate.isEmpty())
            {
                Update hrRecordsToUpdate;
            }
        }
    }
    
    Global void Finish(Database.BatchableContext bContext)
    {
        System.debug('Batch Job Id is....: '+ bContext.getJobId());
        
        AsyncApexJob jobDetails = [Select id, status, totaljobItems, jobitemsprocessed, 
                                        numberoferrors, createdby.email
                                            from AsyncApexJob
                                                Where id =: bContext.getJobId()];
       system.debug('job details:'+jobDetails); 
        
    }
}