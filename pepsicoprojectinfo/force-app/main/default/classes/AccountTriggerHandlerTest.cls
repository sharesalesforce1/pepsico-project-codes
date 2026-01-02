@isTest
public class AccountTriggerHandlerTest {
  @isTest
  public static void copybillingtoshippingtest()
  {
      //step1:You need to insert the records manually as per the requirements
      List<Account>acclist = new List<Account>();
      
      for(integer i=0;i<2;i++)
      {
          Account acc = new Account();
          acc.Name = 'Test'+i;
          acc.BillingCity = 'Testcity';
          acc.BillingCountry = 'India';
          acc.BillingState = 'Andhra pradesh';
          acc.BillingStreet = 'Teststreet';
          acc.BillingPostalCode = '123456';
          acc.Copy_BillingToShipping__c = true;
          acc.Active__c = 'Yes';
          acclist.add(acc);
      }
      
      //step2:all the dml operations placed betweeen 
      Test.startTest();
      insert acclist;
      Test.stopTest();
      
      //step3:retreive the records whatever u inserted previously
      Account updatedacc = [select shippingCity from Account where Id=:acclist[1].Id];
      
      //step4:compare actual result and expected result
      system.assertEquals(acclist[1].BillingCity,updatedacc.ShippingCity);
  }
}