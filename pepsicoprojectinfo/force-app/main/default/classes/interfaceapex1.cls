public class interfaceapex1 implements InterfaceApex
{
   public void fixeddeposit(integer money)
   {
       system.debug('I am doing fixed deposit');
   }
    
   public void withdraw()
   {
       system.debug('I am withdrawing the money');
   }
    
   public void addition()
   {
       Integer a=20,b=20;
       system.debug('Addition is:'+(a+b));
   }
       
    public void accname(string accname)
    {
        system.debug('Account name'+accname);
    }
    
    public void transfer()
    {
        system.debug('transferring the money');
    }
}