public class Leadtriggerhandler 
{
  public static void annualrevenueupdate(List<Lead>ldlist)
  {
      for(Lead ld : ldlist)
      {
          if(ld.Industry == 'Banking')
          {
              ld.AnnualRevenue = 90000;
          }
          else if(ld.Industry == 'Finance')
          {
              ld.AnnualRevenue = 76000;
          }
          else if(ld.Industry == 'Insurance')
          {
              ld.AnnualRevenue = 45000;
          }
          else if(ld.Industry == 'Manufacturing')
          {
              ld.AnnualRevenue = 84000;
          }
           else if(ld.Industry == 'Education')
          {
              ld.AnnualRevenue = 74000;
          }
          else if(ld.Industry == 'Consulting')
          {
              ld.AnnualRevenue = 32000;
          }
           else if(ld.Industry == 'Energy')
          {
              ld.AnnualRevenue = 94000;
          }
          
      }
  }
}