public class myApex13 
{
  public static void method1(integer tablenumber)
  {
      for(integer counter=1;counter<=10;counter++)
      {
          system.debug(tablenumber + '*' + counter + '=' + (tablenumber*counter));
      }
  }
    
  public static void method2()
  {
      integer i=1;
      
      while(i<=100) //1<=100 2<=100 3<=100
      {
          system.debug('Hello world:'+i);
          i++;//1++
      }
  }
    
    
  public static void method3()
  {
      integer i=1;
      
      do{
          system.debug('Hello world:'+i);
          i++;
      }while(i<=100);
  }
}