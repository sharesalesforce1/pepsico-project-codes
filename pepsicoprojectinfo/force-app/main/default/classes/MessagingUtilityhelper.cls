public class MessagingUtilityhelper 
{
  public static void sendBatchJobstatusNotifications(AsyncApexJob jobinfo,string jobName)
  {
      if(jobinfo!=null)
      {
          Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            	
            	string[] toAddress = new string[]{jobInfo.CreatedBy.Email,'sripatturu@gmail.com','manasa.clsa@gmail.com'};
            	email.setToAddresses(toAddress);
            
            	email.setReplyTo('customersupport@dell.com');
            
            	email.setSenderDisplayName('DELL Weekly Batch Job Support Team');
            
            	string emailSubject = 'Alert : Acount Weekly Batch Job Status Notification: '+ jobName + ' - ( '+ jobInfo.Id+ ' )';
            	email.setSubject(emailSubject);
            
            	string emailContent = 'Dear Customer Support, <br/><br/> We are pleased to inform you that we have executed the Weekly Hiring Manager Update Batch Job. <br/><br/>'+
                    					'Please find below the Batch Job Status Details....: <br/><br/>'+
                    					'Batch Job Id .......: ' + jobInfo.Id+
                    					'<br/> Batch Job Name ......: '+ jobName+
                    					'<br/> Batch Job Status .......: '+ jobInfo.Status+
                    					'<br/> Total Number of Batches ......: '+ jobInfo.TotalJobItems+
                    					'<br/> Number of Batvhes Processed .....: '+ jobInfo.JobItemsProcessed+
                    					'<br/> Number of Batches Failed.........: '+ jobInfo.NumberOfErrors+
                    					'<br/><br/> Please find the below address, if any queries. '+
                    					'<br/><br/> <i> *** This is a System Generated Email. Please Do Not Reply.</i>'+
                    					'<br/><br/> Thanks & Reagrds, <br/> Customer Support Team, <br/> Dell Inc. ';
                email.setHtmlBody(emailContent);
            
            	Messaging.SendEmailResult[] results = Messaging.sendEmail(new Messaging.SingleEmailMessage[]{email});
      }
  }
}