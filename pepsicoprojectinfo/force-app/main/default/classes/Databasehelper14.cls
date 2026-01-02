public class Databasehelper14 
{
  public static void method1()
  {
      List<Case>caselist = [select id,status,priority,type,reason,origin from case where status='new'];
      List<Case>casestoupsert = new List<Case>();
      
      for(Case cs : caselist)
      {
          cs.priority='medium';
          casestoupsert.add(cs);
      }
      
      Case cs = new Case();
      cs.status = 'new';
      cs.Priority = 'High';
      cs.Type = 'Mechanical';
      cs.Origin = 'Phone';
      cs.Reason = 'Breakdown';
      cs.Subject = 'my webcame had became down';
      casestoupsert.add(cs);
      
      if(!casestoupsert.isempty())
      {
          upsert casestoupsert;
      }
  }
}