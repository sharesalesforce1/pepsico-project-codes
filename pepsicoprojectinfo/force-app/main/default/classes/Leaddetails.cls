public class Leaddetails 
{
  public static void method1()
  {
      List<Lead>leadinfo = new List<Lead>();
      
      for(integer i=1;i<=200;i++)  //100<=100
      {
          Lead ld = new Lead();
          ld.LastName = 'bulklead'+i;
          ld.FirstName = 'sfdc';
          ld.Company = 'abc';
          leadinfo.add(ld);
          insert ld;
      }
      
      /*
      if(!leadinfo.isempty())
      {
          insert leadinfo;
      }
    */
      
      system.debug(leadinfo);
  }
}