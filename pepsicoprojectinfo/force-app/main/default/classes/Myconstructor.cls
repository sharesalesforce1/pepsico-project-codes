public class Myconstructor 
{
   public integer insuredamount;
   public string custcode;
    
  public Myconstructor(integer amount,string code)
  {
      this.insuredamount=amount;
      this.custcode=code;
  }
    
  public void method1(integer minimumamount)
  {
      if(insuredamount>minimumamount)
      {
          system.debug('accepted for payment for'+custcode);
      }
      else
      {
          system.debug('Not accepted for payment for'+custcode);
      }
  }
    
  public void method2(integer maximumamount)
  {
      if(insuredamount<maximumamount)
      {
          system.debug('You are not giving sufficient premium'+custcode);
      }
      else
      {
          system.debug('You are providing the premium');
      }
  }
}