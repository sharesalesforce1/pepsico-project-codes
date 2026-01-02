global class UpdateCasesQueuable implements system.queueable
{
   global void execute(system.queueablecontext qc)
   {
       List<Case>casestoupdate = [select id,status,priority from case where priority='Medium'];
       List<Case>updatedinfo = new List<Case>();
       
       for(Case c : casestoupdate)
       {
           c.Status = 'In Progress';
           updatedinfo.add(c);
       }
       
       if(!updatedinfo.isempty())
       {
           Database.update(updatedinfo,false);
       }
   }
}