public class accountclassinfo {
	@AuraEnabled
	public static List<Account>method1(){
		List<Account>acclist = [select id,Name from Account limit 5];
		return acclist;
	}
}