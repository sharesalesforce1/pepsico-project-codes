/**
* @File Name : ContactDemo.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : August 6, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | August 6, 2025 |   | Initial Version
**/

public class ContactDemo {
	@AuraEnabled(cacheable=true)
	public static List<Contact>getcontacts(){
		return [select Id,FirstName,LastName,Phone,Email from Contact where FirstName!=null AND LastName!=null];
	}
}