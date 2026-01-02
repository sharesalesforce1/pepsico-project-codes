public class Accounttriggerhandler1 
{
  public static void method1(List<Account>acclist)
  {
      List<Opportunity>opplist = new List<Opportunity>();
      
      for(Account acc : acclist)
      {
          Opportunity opp = new Opportunity();
          opp.Name = acc.Name;
          opp.StageName = 'Prospecting';
          opp.CloseDate = Date.newInstance(2025,12,27);
          opp.AccountId = acc.Id;
          opplist.add(opp);
      }
      
      if(!opplist.isempty())
      {
          insert opplist;
      }
  }
    
  public static void method2(Map<Id,Account>oldmap,List<Account>newlist)
  {
      for(Account acc : newlist)
      {
          if(oldmap!=null && acc.Phone != oldmap.get(acc.Id).Phone) //(8919 != 9989)
          {
              acc.Description = 'phone is modified on account';
          }
      }
  }
}