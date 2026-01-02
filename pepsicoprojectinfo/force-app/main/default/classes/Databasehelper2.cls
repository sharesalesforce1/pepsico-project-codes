public class Databasehelper2 
{
   public static void getAllhrrecords()
   {
       Map<Id,Hiringmanager__c>mapHrrecords = new Map<Id,Hiringmanager__c>([select Id,hrname__C,hremail__c,Location__C from Hiringmanager__c]);
       
       system.debug('Record size:'+mapHrrecords.size());
       
       if(!mapHrrecords.isempty())
       {
           for(Hiringmanager__c hr : mapHrrecords.values())
           {
               system.debug('Hiringmanager:'+hr);
           }
       }
   }
}