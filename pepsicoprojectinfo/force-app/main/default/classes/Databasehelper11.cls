public class Databasehelper11 
{
  public static void method1(string industryname)
  {
      List<Account>lstaccount = [select id,name,rating,industry,annualrevenue from Account where industry=:industryname];
      
      List<Account>updatedlist = new List<Account>();
      
      for(Account acc : lstaccount)
      {
          if(acc.Industry == 'Banking')
          {
              acc.annualrevenue = 80000;
          }
          else if(acc.Industry == 'Finance')
          {
              acc.annualrevenue = 65000;
          }
          else if(acc.Industry == 'Education')
          {
              acc.annualrevenue = 50000;
          }
          else if(acc.Industry == 'Insurance')
          {
              acc.annualrevenue = 10000;
          }
          else if(acc.Industry == 'Manufacturing')
          {
              acc.annualrevenue = 74000;
          }
          
          updatedlist.add(acc);
      }
      
      if(!updatedlist.isempty())
      {
          update updatedlist;
      }
  }
}