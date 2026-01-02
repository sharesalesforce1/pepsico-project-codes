public class MyApex8 
{
  public static void method1(integer monthnumber)
  {
      if(monthnumber>=1 && monthnumber<=4)
      {
          system.debug('winter season');
      }
      else if(monthnumber>=5 && monthnumber<=8)
      {
          system.debug('summer season');
      }
      else if(monthnumber>=9 && monthnumber<=12)
      {
          system.debug('spring season');
      }
      else
      {
          system.debug('Invalid month');
      }
      
  }
}