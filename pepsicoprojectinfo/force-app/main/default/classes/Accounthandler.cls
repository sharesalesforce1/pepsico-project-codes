public class Accounthandler 
{
  @AuraEnabled(cacheable=true)
  public static List<Account> getrecords(string billingcountry)
  {
     return [select Id,Name,Phone,BillingCountry from Account where BillingCountry=:billingcountry AND Phone!=null];
  }
}