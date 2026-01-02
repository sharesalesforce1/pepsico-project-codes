public class MyApex10 
{
  public static void method1(integer daynumber)
  {
      switch on daynumber
      {
          when 1{
              system.debug('Monday');
          }
          when 2{
              system.debug('Tuesday');
          }
          when 3{
              system.debug('wednesday');
          }
          when 4{
              system.debug('Thursday');
          }
          when 5{
              system.debug('Friday');
          }
          when 6{
              system.debug('Saturday');
          }
          when 7{
              system.debug('Sunday');
          }
          when else
          {
              system.debug('Invalid day number');
          }
      }
  }
}