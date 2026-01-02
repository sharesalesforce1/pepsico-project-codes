public class MyApex21 
{
    public static void insertUserandAccount() {
        Profile pro = [SELECT Id FROM Profile WHERE Name='System Administrator'];
        //UserRole r = [SELECT Id FROM UserRole WHERE Name='Manager'];
        
        User usr = new User(alias = 'abc19', email='abc19@gmail.com', 
                            emailencodingkey='UTF-8', lastname='abccc', 
                            languagelocalekey='en_US', 
                            localesidkey='en_US', profileid = pro.Id,
                            timezonesidkey='America/Los_Angeles', 
                            username='abc19boddu@gmail.com');
        insert usr;
        
     
       Account acc = new Account();
      acc.Name = 'sfdc force';
      acc.Active__C = 'Yes';
      insert acc;
        
        //InsertAccountMixedDMLExample.insertAccount('force');
    }
}