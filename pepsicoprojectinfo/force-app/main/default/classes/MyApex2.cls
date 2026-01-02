public class MyApex2 
{
  public static void method2()
  {
      //<Datatype> <variablename> = <value>;
      Integer a=23;
      String nm = 'sonam';
      Decimal sal = 4565656.56;
      ID id = '001gK0000047Rz4QAE';
      Boolean iswinner = true;
      Date shipmentdata = date.today();
      DateTime currentdt = DateTime.now();
      Time currenttime = DateTime.now().time();
      
      System.debug('Integer:'+a);
      System.debug('String:'+nm);
      system.debug('Salary:'+sal);
      system.debug('Accountid:'+id);
      system.debug(iswinner);
      system.debug(shipmentdata);
      system.debug(currentdt);
      system.debug(currenttime);
  }
}