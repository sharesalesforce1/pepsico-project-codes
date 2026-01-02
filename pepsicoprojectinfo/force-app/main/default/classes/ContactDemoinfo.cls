public class ContactDemoinfo {
	@AuraEnabled(cacheable=true)
	public static List<Contact> getcontacts(){
		List<Contact>lstcon = [select id,FirstName,LastName,Phone,Email from Contact
		where FirstName!=Null AND LastName!=Null];
		return lstcon;
	}
}