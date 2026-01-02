public class MyApex6 
{
  public static void method1(decimal p,decimal t,decimal r)
  {
      decimal simpleinterest = p*t*r/100;
      
      decimal maturityamount = p+simpleinterest;
      
      system.debug('simple interest is:'+simpleinterest);
      system.debug('Maturity amount is:'+maturityamount);
  }
}