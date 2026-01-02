public class CommonHelper 
{
  
   public static void dmloperations()
  {
      User usertobedeactivate = [select id,username,isActive from user where username='cust15@gmail.com' limit 1];
      
      if(usertobedeactivate.id!=null)
      {
          usertobedeactivate.IsActive=false;
          
          update usertobedeactivate;
          
          Createhrrecord();
      }
  }
    
   @future()
   public static void Createhrrecord()
   {
       Hiringmanager__c hr = new Hiringmanager__c();
       
       hr.hrname__c = 'sudeep kumar';
       hr.Location__c = 'Mumbai';
       hr.hremail__c = 'sudeep@gmail.com';
       hr.hrphone__c = '+18393198';
       
       insert hr;
       
       system.debug('hiring manager records:'+hr);
       
   }
}