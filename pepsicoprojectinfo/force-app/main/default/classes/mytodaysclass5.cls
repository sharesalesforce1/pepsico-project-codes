public class mytodaysclass5 
{
  public static void method1()
  {
      try{
          Lead ld = [select id,name from lead where name like 'narendra'];
          system.debug('Lead:'+ld);
      }
      catch(Exception e)
      {
          system.debug('Message:'+e.getMessage());
          system.debug('Type of exception:'+e.getTypeName());
          system.debug('Line number of exception:'+e.getLineNumber());
      }
      
  }
    
  public static void method2()
  {
      try{
          Account acc = new Account();
          acc.Name='prasad';
          acc.Active__c = 'Yes';
          insert acc;
          
          Account acc1=[select id,name,Description from Account where Id=:acc.Id];
          String str = acc1.Description;
          system.debug('Description:'+str);
      }
      catch(Exception e)
      {
          system.debug('Message:'+e.getMessage());
          system.debug('Type of exception:'+e.getTypeName());
          system.debug('Line number of exception:'+e.getLineNumber());
      }
  }
}