public class UpdateAccountPhone 
{
  public static void handle(List<Account>newAccounts,Map<Id,Account>oldMap)
  {
      set<Id>updatedAccountIds = new set<Id>();
      
      for(Account acc : newAccounts)
      {
          if(acc.Phone != oldMap.get(acc.Id).Phone)
          {
              updatedAccountIds.add(acc.Id);
          }
      }
      
      //Retreive the related opportunities for the updated accounts
      List<Opportunity>updatedinfo = [select Id,Account.Phone from opportunity where AccountId in :updatedAccountIds];
      List<Opportunity>relatedopps = new List<Opportunity>();
      
      for(Opportunity opp : updatedinfo)
      {
          opp.Phone__c = opp.Account.Phone;
          relatedopps.add(opp);
      }
      
      if(!relatedopps.isempty())
      {
          update relatedopps;
      }
      
  }
}