public class Contacttriggerhandler 
{
 public static void totalcontactcount(List<Contact>newcontacts)
 {
     List<Account>acclisttoupdate = new List<Account>();
     set<Id>accountIds = new set<Id>();
     
     for(Contact con : newcontacts)
     {
         if(con.AccountId !=null)
         {
             accountIds.add(con.AccountId);
         }
     }
     
     //related accounts based on the above accountId
     Map<Id,Account>accountswithcontacts = new Map<Id,Account>([select id,name,
                                                                Total_contact_count__c,
                                                                (select id from contacts) from account where id IN :accountIds]);
     
     for(Account acc : accountswithcontacts.values())
     {
         acc.Total_contact_count__c = acc.contacts.size();
         acclisttoupdate.add(acc);
     }
     
     if(!acclisttoupdate.isempty())
     {
         update acclisttoupdate;
     }
 }
}