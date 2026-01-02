public class dmlutility 
{
  public static void mergeaccountrecords()
  {
      Account targetaccount = [select id,name,rating,industry,annualrevenue,type,active__c from account where name='Sharing rules account' limit 1];
      
      Account sourceaccount = [select id,name,rating,industry,annualrevenue,type,active__c from account where name='Manual sharing account' limit 1];
      
      if(targetaccount !=null && sourceaccount !=null)
      {
          merge targetaccount sourceaccount;
      }
  }
}