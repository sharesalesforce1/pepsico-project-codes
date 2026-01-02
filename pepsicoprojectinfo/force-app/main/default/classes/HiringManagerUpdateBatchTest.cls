@isTest
public class HiringManagerUpdateBatchTest {
  static testmethod void testhiringmanager()
  {
      createhiringmanager();
      
      //step2
      Test.startTest();
         HiringManagerUpdateBatch pbatch = new HiringManagerUpdateBatch();
         Database.executeBatch(pBatch);
      Test.stopTest();
      
      //step3
      List<Hiringmanager__c>updatedRecords=[select Location__c,hrphone__c,hremail__c from Hiringmanager__c where hremail__c!=null];
      
      //step4
      for(Hiringmanager__c hr : updatedRecords)
      {
          system.assertEquals('Hyderabad',hr.Location__c);
          system.assertEquals('5555888899',hr.hrphone__c);
      }
  }
    
  public static void createhiringmanager()
  {
      List<Hiringmanager__c> lstHrRecords = new List<Hiringmanager__c>();
        
        for(integer counter = 1; counter <= 100; counter++)
        {
            Hiringmanager__c hr = new Hiringmanager__c();
            
            	hr.hrname__c = 'Test - '+ counter;
            	hr.Location__c = 'Mumbai';
            	hr.hremail__c = 'testhr'+counter+'@gmail.com';
            	hr.hrphone__c = '9900665544';
        	    
            lstHrRecords.Add(hr);
        }
        
        if(! lstHrRecords.isEmpty())
        {
            insert lstHrRecords;
        }
  }
}