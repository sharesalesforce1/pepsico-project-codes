public class Databasehelper10 
{
  public static void method1()
  {
      List<Account>acclist = [select id,name,rating,industry from account where industry='Banking'];
      List<Account>updatedlist = new List<Account>();
      
      if(!acclist.isempty())
      {
          for(Account acc : acclist)
          {
             acc.rating = 'cold';
              updatedlist.add(acc);
          }
      }
      
      if(!updatedlist.isempty())
      {
          update updatedlist;
      }
  }
}