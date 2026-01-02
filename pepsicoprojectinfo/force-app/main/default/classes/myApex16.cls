public class myApex16 
{
    public static void method1()
    {
        List<Hiringmanager__c>lstrecords = new List<Hiringmanager__c>();
        
        for(integer counter=1;counter<=200;counter++)
        {
            Hiringmanager__c hr = new Hiringmanager__c();
            hr.hrname__c = 'bulkhr'+counter;
            hr.hremail__c = 'bulkhr'+counter+'@gmail.com';
            hr.Location__c = 'Hyderabad';
            hr.hrphone__c = '990888';
            lstrecords.add(hr);
        }
        
        if(!lstrecords.isempty())//if it is not empty.means some data is there in the list collection then i am inserting
        {
            insert lstrecords;
        }
        else
        {
            system.debug('No records are presented in the list collection');
        }
        
        system.debug(lstrecords);
    }
  
}