public class Hiringmanagerextension
{
   Hiringmanager__c hrRecord;
   
    public Hiringmanagerextension(ApexPages.StandardController controller)
    {
        hrRecord=(Hiringmanager__c)controller.getRecord();
    }
    
    public void ValidateDuplicateHRRecords()
    {
        integer recordsCount = [select count() from Hiringmanager__c where
                               hrphone__c=:hrRecord.hrphone__c];
        
        if(recordsCount>0)
        {
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR,'duplicate records found'));
        }
        else
        {
            insert hrRecord;
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.Confirm,'Records inserted successfully'));
        }
    }
}