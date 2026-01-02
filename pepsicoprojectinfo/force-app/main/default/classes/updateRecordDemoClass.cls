/**
* @File Name : updateRecordDemoClass.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : August 22, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | August 22, 2025 |   | Initial Version
**/

public with sharing class updateRecordDemoClass {
    @AuraEnabled(cacheable=true)
    Public static List<Contact>getconlist()
    {
      return [select Id,FirstName,LastName,Phone,Email from Contact where firstName!=NULL AND LastName!=NULL AND Phone!=NULL];
    }
}