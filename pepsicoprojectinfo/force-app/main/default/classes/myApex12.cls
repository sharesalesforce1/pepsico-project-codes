public class myApex12 
{
  public static void method1()
  {
      for(Integer i=1;i<=100;i++)
      {
          system.debug(i);
      }
  }
    
  public static void method2()
  {
      for(integer i=1;i<=50;i++)
      {
          if(Math.Mod(i,2)==0)
          {
              system.debug(i);
          }
      }
  }
    
  public static void method3()
  {
      for(integer i=1;i<=50;i++)
      {
          if(Math.Mod(i,2)!=0)
          {
              system.debug(i);
          }
      }
  }
}