public class setcollection 
{
 public static void method1()
 {
     set<string>ct1 = new set<string>{'Hyderabad','Usa','Uk','Canada','Australia','Germany','Singapore'};
         
         system.debug(ct1);
     
     set<Integer>evnm1  = new set<Integer>{2,1,9,19,12,13,45,10,2};
         system.debug(evnm1);
     
     List<string>customernames = new List<string>{'Ram','Kumar','aJay','Sowmya','Ajay','Ram','Chandra'};
         
         set<string>uniqueelement = new set<string>();
     uniqueelement.addall(customernames);
     
     system.debug('unique elements:'+uniqueelement);
     
     
 }
}