public class ContactTriggerHandler1 
{
  public static void sendEmailNotification(List<Contact>conlist)
  {
      List<Messaging.Email>emailList = new List<Messaging.Email>();
      
      for(Contact con : conlist)
      {
          if(con.Email!=null)
          {
              Messaging.SingleEmailMessage emailMsg = new Messaging.SingleEmailMessage();
              
              String[] toAddress = new String[]{con.Email};
              emailMsg.setToAddresses(toAddress);    
              
               String emailSub = 'Welcome' + con.FirstName;
		       emailMsg.setSubject(emailSub);
              
               String disName = 'Email notification';
               emailMsg.setSenderDisplayName(disName);
              
               String content = 'Hi' + con.FirstName + '<br/><br/>' + 
                  'Welcome to salesforce ecosystem! <br/><br/>' +
                  'Begin your Salesforce admin and developer journey <br/><br/>'+
                   'Happy Learning!!!<br/><br/>'+
                  'Thank you!<br/><br/>';
              
              emailMsg.setHtmlBody(content);
              
              emailList.add(emailMsg);

              
          }
      }
      
      Messaging.sendEmail(emailList);
  }
}