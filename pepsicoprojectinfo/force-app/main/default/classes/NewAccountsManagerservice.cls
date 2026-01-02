@RestResource(URLMapping='/NewAccountsManagerService/*')
global class NewAccountsManagerservice 
{
 @HttpPost
  global static string insertnewAccount(string accname,string accrating,string accindustry,Decimal accrevenue,String accphone,String accfax,string accwebsite,string accType,String accownership,string accActive)
  {
      Account acc = new Account();
      
      acc.Name = accName;
      acc.Rating = accRating;
      acc.Industry = accIndustry;
      acc.AnnualRevenue = accRevenue;
      acc.Phone = accphone;
      acc.Fax = accfax;
      acc.Website = accwebsite;
      acc.Type = accType;
      acc.Ownership = accownership;
      acc.Active__c = accActive;
      
      insert acc;
      
      if(acc.Id != null)
          return 'Accounts inserted';
      else
          return 'something went wrong while inserting the accounts records';
  }
}