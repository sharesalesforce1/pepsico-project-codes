public class Databasehelper1 
{
  public static void getaccountsbysearch(string startingchars)
  {
      if(startingchars !=null && startingchars !='')
      {
          startingchars+='%'; //'a%'
          
          List<Account>lstAccounts=[select Id,Name,Rating,Industry from Account where name like :startingchars];
          
          system.debug(lstAccounts.size());
          
          for(Account acc : lstAccounts)
          {
              system.debug('Account id is:'+acc.Id);
              system.debug('Account Name is:'+acc.Name);
          }
      }
      
     
  }
}