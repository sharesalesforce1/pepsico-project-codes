public class Databasehelper7 
{
  public static void getbankingcontacts()
  {
      Map<Id,Account>mapAccounts = new Map<Id,Account>([select id,name,industry from Account where industry='Banking']);
      
      if(!mapAccounts.isempty())
      {
          List<Contact>lstcon = [select id,firstname,lastname,fax,phone from contact where accountid IN :mapAccounts.keyset()];
          
          for(Contact con : lstcon)
          {
              system.debug('contact record:'+con);
          }
      }
  }
    
    
  public static void recordscount()
  {
      integer recordscount = [select count() from Account];
      
      system.debug('Account records count..'+recordscount);
      
      system.debug('Number of soql queries used..:'+system.limits.getQueries());
      system.debug('Cpu cycle time used..:'+system.limits.getCpuTime());
      system.debug('Number of records retreived..:'+system.limits.getQueryRows());
      system.debug('Number of dml statements used..:'+system.limits.getDmlstatements());
  }
}