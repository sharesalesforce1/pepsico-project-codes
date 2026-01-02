public with sharing class AccountContactController {
    @AuraEnabled
    public static void saveRecords(Map<String, Object> data) {
        Map<String, Object> accMap = (Map<String, Object>) data.get('accountData');
        Map<String, Object> conMap = (Map<String, Object>) data.get('contactData');

        Account acc = new Account(
            Name = (String) accMap.get('accName'),
            Rating = (String) accMap.get('rating'),
            Industry = (String) accMap.get('industry'),
            Phone = (String) accMap.get('phone'),
            Fax = (String) accMap.get('fax')
        );
        insert acc;

        Contact con = new Contact(
            FirstName = (String) conMap.get('firstName'),
            LastName = (String) conMap.get('lastName'),
            Phone = (String) conMap.get('contactPhone'),
            Email = (String) conMap.get('email'),
            AccountId = acc.Id
        );
        insert con;
    }
}