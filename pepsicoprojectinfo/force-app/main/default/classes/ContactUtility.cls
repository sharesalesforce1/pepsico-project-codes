public class ContactUtility 
{
  public static void mainprocessing()
  {
      try{
          insertcontact();
      }
      catch(ContactException e)
      {
          system.debug('Message:'+e.getMessage());
          system.debug('Line number:'+e.getLineNumber());
          system.debug('Type of exception:'+e.getTypeName());
      }
  }
    
   public static void insertcontact()
   {
       try{
           Contact con = new Contact();
           con.FirstName='subash';
           insert con;
       }
       catch(Exception e)
       {
           throw new ContactException('credit card not approved because you didnt inserted required fields on contact object');
       }
   }
}