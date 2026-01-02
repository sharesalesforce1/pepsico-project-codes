public class MyApex3 
{
 public static void method2()
 {
     //<objectname> <instancename> = new <objectname>();
     //style1
     Account acc = new Account();
     acc.Name = 'sonal';
     acc.Rating = 'Warm';
     acc.Industry = 'Education';
     acc.Active__c = 'Yes';
     
     insert acc;

     system.debug('Account details:'+acc);     
     
     //style2
     Account acc1 = new Account(Name='Krishna',Rating='Warm',Industry = 'Education',Active__C = 'Yes');
     
     insert acc1;
     system.debug('Account details1:'+acc1);
     
 }
    
    
 public static void method1()
 {
     	Hiringmanager__c hr = new Hiringmanager__c();
        hr.hrname__c = 'harsha';
        hr.hremail__c = 'harsha@gmail.com';
        hr.hrphone__c = '+91029012';
        
        insert hr;
     
        Position__c pos = new Position__c();
        pos.Position_Name__c = 'sfdc developer';
        pos.Hiringmanager__c = hr.Id;
     
       insert pos;
     
        system.debug('Hiringmanager record:'+hr.Id);
        system.debug('Position record:'+pos.Id);
     
     Candidate__c can = new Candidate__c();
     //can.Name = 'Sowmya';
     can.Candidate_FirstName__c = 'sowmya';
     can.Pannumber__c = 'EGWPB2316H';
     can.Position__c = pos.Id;
     
     insert can;
     
     system.debug('candidate:'+can.Id);
 }
}