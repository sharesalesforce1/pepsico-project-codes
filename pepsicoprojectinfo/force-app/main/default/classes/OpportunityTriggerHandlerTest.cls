@isTest
public class OpportunityTriggerHandlerTest 
{
  @isTest
  public static void updatedescriptionTest()
  {
      //Createdate
      List<Opportunity>opplist = new List<Opportunity>();
      
      for(integer i=1;i<=5;i++)
      {
          Opportunity opp = new Opportunity();
          opp.Name = 'Testopp'+i;
          opp.StageName = 'Prospecting';
          opp.CloseDate = system.today();
          opp.Amount = 200000;
          opplist.add(opp);
      }
      
      Test.startTest();
      insert opplist;
      Test.stopTest();
      
      List<Opportunity>updatedopplist = [select id,description from opportunity where id=:opplist[0].Id];
      
      system.assertEquals('Premium Opportunity',updatedopplist[0].description);
  }
}