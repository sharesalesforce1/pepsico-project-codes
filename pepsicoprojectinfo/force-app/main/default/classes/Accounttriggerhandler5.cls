public class Accounttriggerhandler5 
{
  public static void preventdeletion(List<Account>acclist)
  {
      for(Account acc : acclist)
      {
          if(acc.Active__c == 'Yes')
          {
              acc.addError(Label.Accounts_deletion);
          }
      }
  }
    
  public static void requirefields(List<Account>acclist)
  {
      for(Account acc : acclist)
      {
          if(acc.Industry ==null || acc.Industry =='')
          {
              acc.Industry.addError('Industry is required field .Kindly please fill it');
          }
         if(acc.Website ==null || acc.Website =='')
          {
              acc.Website.addError('Website is required field .Kindly please fill it');
          }
          if(acc.Fax ==null || acc.Fax =='')
          {
              acc.Fax.addError('Fax is required field .Kindly please fill it');
          }
      }
  }
}