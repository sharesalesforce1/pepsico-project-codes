/**
* @File Name : accountclass.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : August 21, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | August 21, 2025 |   | Initial Version
**/

public class accountclass {
	@AuraEnabled
	public static List<Account> method1(){
		List<Account>acc = [select Id,Name from Account Limit 5];
		return acc;
	}
}