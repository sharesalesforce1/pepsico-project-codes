public class Databasehelper9 
{
  public static void method2(string hrname,string hremail,string hrphone)
  {
      Hiringmanager__c hr = new Hiringmanager__c();
      hr.hrname__c = hrname;
      hr.hremail__c = hremail;
      hr.hrphone__c = hrphone;
      insert hr;
      
      system.debug(hr);
  }
}