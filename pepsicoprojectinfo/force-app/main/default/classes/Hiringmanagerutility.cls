public class Hiringmanagerutility 
{
  public static void createhrrecords(string hrname,string hrcity,string hrphone,string hremail)
  {
      Hiringmanager__c hr = new Hiringmanager__c();
      hr.hrname__c = hrname;
      hr.Location__c = hrcity;
      hr.hrphone__c = hrphone;
      hr.hremail__c = hremail;
      
      insert hr;
      
      if(hr.Id !=null)
      {
          system.debug('Hiringmanager record id :'+hr.Id);
          createrelatedposition(hr);
      }
  }
    
  public static void createrelatedposition(Hiringmanager__c hrrecord)
  {
      Position__c pos = new Position__c();
      pos.Position_Name__c = 'sfdc developer';
      pos.Location__c = hrrecord.Location__c;
      pos.Hr_emailid__c = hrrecord.hremail__c;
      pos.Hr_contact_number__c = hrrecord.hrphone__c;
      pos.Hiringmanager__c = hrrecord.Id;
      
      insert pos;
      
      if(pos.Id!=null)
      {
          system.debug('Position id:'+pos.Id);
      }
  }
}