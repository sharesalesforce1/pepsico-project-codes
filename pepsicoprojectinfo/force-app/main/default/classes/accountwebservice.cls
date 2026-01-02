@RestResource(URLMapping='/accountwebservice11/*')
global class accountwebservice 
{
  @httpget
  global static List<Account> method1()
  {
      List<Account>lstaccounts = [select id,name,rating,industry,phone,type,active__C from account order by name];
      return lstaccounts;
  }
}