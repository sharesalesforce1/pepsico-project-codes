public class Mapaccountprg {
  public static void sobjectwithoutloop()
{
    List<Account>acclist = new List<Account>();
    acclist =[select id,phone,name from Account limit 5];
    Map<Id,Account> accmap = new Map<Id,Account>(acclist);
     
    system.debug('map info..:'+accmap);
    system.debug('map info...'+accmap.keyset());
    system.debug('map info...'+accmap.values());
}    
public static void sobjectwithloop()
    {
        
    }
}