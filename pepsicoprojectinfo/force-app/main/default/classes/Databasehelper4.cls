public class Databasehelper4 
{
  public static void method1(string priority)
  {
      List<Case>lstcases = [select id,casenumber,status,priority,type,reason,subject from case where priority=:priority];
      
      system.debug(lstcases.size());
      
      for(Case cs : lstcases)
      {
          system.debug('case record is:'+cs);
      }
  }
}