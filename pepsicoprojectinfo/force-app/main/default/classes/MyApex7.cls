public class MyApex7 
{
  public static void method1(integer english,integer maths,integer physics,integer chemistry,integer hindi)
  {
      if(english >40 && maths>40 && physics>40 && chemistry>40 && hindi>40)
      {
          system.debug('Pass');
      }
      else
      {
          system.debug('Fail');
      }
  }
}