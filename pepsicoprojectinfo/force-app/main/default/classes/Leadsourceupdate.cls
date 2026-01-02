global class Leadsourceupdate implements Database.Batchable<Sobject>
{
   global Database.QueryLocator start(Database.Batchablecontext bcontext)
  {
      string leadinfo = 'select id,name,leadsource from lead where leadsource==null';
      return Database.getQueryLocator(leadinfo);
  }
  
  global void execute(Database.Batchablecontext bcontext,List<Sobject>recordstoprocess)
  {
      List<Lead>leadstoupdate = new List<Lead>();
      
      if(!recordstoprocess.isempty())
      {
          List<Lead>Leadinfo = (List<Lead>)recordstoprocess;
          
          for(Lead ld : Leadinfo)
          {
              ld.leadsource = 'Other';
              leadstoupdate.add(ld);
          }
          
          Database.update(leadstoupdate,false);
         
      }
  }
    
  global void finish(Database.Batchablecontext bcontext)
  {      
      
  }
}