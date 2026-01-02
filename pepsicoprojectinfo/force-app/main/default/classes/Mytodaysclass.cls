public class Mytodaysclass 
{
  public static void method1()
  {
      try{
          Hiringmanager__c hr = new Hiringmanager__c();
          hr.hrname__c = 'nareen';
          hr.hremail__c = 'nareen@gmail.com';
          hr.Location__c = 'Hyderabad';
          
          insert hr;
      }
      catch(Exception e)
      {
          system.debug('Message:'+e.getMessage());
          system.debug('Message:'+e.getTypeName());
          system.debug('Message:'+e.getLineNumber());
      }
      	
  }
    
  public static void method2()
  {
      try{
          Hiringmanager__c hr = new Hiringmanager__c();
          hr.hremail__c = 'nareen@gmail.com';
          hr.Location__c = 'Hyderabad';
          
          insert hr;
      }
      catch(Exception e)
      {
          system.debug('Message:'+e.getMessage());
          system.debug('Message:'+e.getTypeName());
          system.debug('Message:'+e.getLineNumber());
      }
      	
  }
    
  public static void method3()
  {
      try{
          List<Integer>mylist = new List<Integer>();
          
          mylist.add(10);
          mylist.add(20);
          mylist.add(30);
          mylist.add(40);
          
          system.debug('Value of mylist:'+mylist);
          system.debug('Value of mylist:'+mylist[0]);
          system.debug('Value of mylist:'+mylist[4]);
      }
      catch(Exception e)
      {
          system.debug('Message:'+e.getMessage());
          system.debug('Message:'+e.getTypeName());
          system.debug('Message:'+e.getLineNumber());
      } 
  }
  public static void method4(integer first,integer second)
  {
      try{
          decimal third = first/second;
          system.debug('Value:'+third);
      }
       catch(Exception e)
      {
          system.debug('Message:'+e.getMessage());
          system.debug('Type of exception:'+e.getTypeName());
          system.debug('Line number:'+e.getLineNumber());
      } 
  }
    
  public static void method5()
  {
      string s;
      boolean b;
      
      try{
          b=s.contains('abc');
          system.debug('s contains data'+b);
      }
      catch(Exception e)
      {
          system.debug('Message:'+e.getMessage());
          system.debug('Type of exception:'+e.getTypeName());
          system.debug('Line number:'+e.getLineNumber());
      } 
  }
}