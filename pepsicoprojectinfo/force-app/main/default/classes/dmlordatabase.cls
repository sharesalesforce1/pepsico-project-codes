public class dmlordatabase 
{
  public static void method1()
  {
      List<Contact>conlist=new List<Contact>{
          new Contact(FirstName='Joe',LastName='Smith',Department='Finance'),
          new Contact(FirstName='Joe1',LastName='Smith1',Department='Finance'),
          new Contact(FirstName='Joe2',LastName='Smith2',Department='Finance'),
          new Contact(FirstName='Joe3',Department='Finance')
      };
          
      Database.SaveResult[] srList=Database.insert(conlist,false);
      
      for(Database.SaveResult sr : srList)
      {
          if(sr.isSuccess())
          {
              system.debug('Successfully inserted contact:'+sr.getId());
          }
          else
          {
              for(Database.Error err : sr.getErrors())
              {
                  system.debug('The following error had occured');
                  system.debug(err.getStatusCode() + ':' + err.getMessage());
                  system.debug('Contact field that affected this error:'+err.getFields());
              }
          }
      }
  }
}