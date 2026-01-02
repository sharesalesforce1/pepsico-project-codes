public class Databasehelper8 
{
 public static void method1()
 {
     List<Position__c>poslist = new List<Position__c>();
     
     for(integer counter=1;counter<=50;counter++)
     {
         Position__c pos = new 	Position__c();
         
         pos.Position_Name__c = 'sfdc dev'+counter;
         pos.Location__c = 'Hyderabad';
         pos.Hr_emailid__c = 'sfdcdev'+counter+'@gmail.com';
         pos.Hr_contact_number__c = '+192020';
         poslist.add(pos);
     }
     
     if(!poslist.isempty())
     {
         insert poslist;
     }
     
 }
}