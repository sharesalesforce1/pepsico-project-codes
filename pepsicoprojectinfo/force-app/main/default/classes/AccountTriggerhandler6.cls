public class AccountTriggerhandler6 {
  public static void CopyBillingtoshipping(List<Account>acclist)
  {
      for(Account acc : acclist)
      {
          if(acc.Copy_BillingToShipping__c == true)
          {
              acc.ShippingCity = acc.BillingCity;
              acc.ShippingCountry = acc.BillingCountry;
              acc.ShippingPostalCode = acc.BillingPostalCode;
              acc.ShippingState = acc.BillingState;
              acc.ShippingStreet = acc.BillingStreet;
          }
      }
  }
}