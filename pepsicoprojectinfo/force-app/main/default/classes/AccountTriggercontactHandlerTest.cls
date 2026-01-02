@isTest
public class AccountTriggercontactHandlerTest {
 @isTest
 public static void createRelatedContactTest()
 {
     List<Account>acclist = new List<Account>();
     
     for(integer i=1;i<=5;i++)
     {
         Account acc = new Account();
         acc.Name = 'Test'+i;
         acc.Industry = 'Energy';
         acc.Active__c = 'Yes';
         acclist.add(acc);
     }
     
     Test.startTest();
     insert acclist;
     Test.stopTest();
     
     List<Contact>conlist = [select id from contact where AccountId=:acclist[0].Id];
     
     system.assert(conlist!=null,'contact is not created');
 }
}