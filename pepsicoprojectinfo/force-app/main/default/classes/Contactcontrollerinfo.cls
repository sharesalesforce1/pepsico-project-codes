/**
* @File Name : Contactcontrollerinfo.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : December 23, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | December 23, 2025 |   | Initial Version
**/

public class Contactcontrollerinfo {
	@AuraEnabled(cacheable=true)
	public static List<Contact> getcontactlist(){
		return [select Id,Name,LeadSource,Department from Contact where LeadSource!=null and Department!=null Limit 5];
	}

	@AuraEnabled(cacheable=true)
	public static List<Contact>filtercontacttype(string leadsource){
		return [select Id,Name,LeadSource,Department from Contact where LeadSource=:leadsource];
	}
}