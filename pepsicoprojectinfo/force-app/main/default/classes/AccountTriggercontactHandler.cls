public class AccountTriggercontactHandler{
  public static void createRelatedContact(List<Account>accList)
  {
    List<Contact>conList = new List<Contact>();
	
    for(Account acc: accList)
	{
	  Contact con = new Contact();
	  con.FirstName = 'Test FName';
	  con.LastName = 'Test LName' + acc.Name;
	  con.AccountId = acc.id;
      con.Email = 'Test@gmail.com';
	  conList.add(con);
	}
	
	if(!conList.isEmpty()){
	   insert conList;
	}
  }
}