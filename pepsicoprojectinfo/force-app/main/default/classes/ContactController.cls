/**
* @File Name : ContactController.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : August 20, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | August 20, 2025 |   | Initial Version
**/

public class ContactController {
	@AuraEnabled(cacheable=true)
	public static List<Contact> getContactList(){
		return [select Id,Name,LeadSource,Department from Contact where LeadSource!=null AND Department!=null LIMIT 5];
	}

	@AuraEnabled(cacheable=true)
	public static List<Contact> filtercontacttype(string leadsource){
		return [select Id,Name,LeadSource,Department from Contact where LeadSource=:leadsource];
	}
}