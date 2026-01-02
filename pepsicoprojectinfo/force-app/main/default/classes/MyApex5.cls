public class MyApex5 
{
  public static void initilization(Integer firstnumber,Integer secondnumber)
  {
      integer result;
      
      result=firstnumber+secondnumber;
      system.debug('Addition:'+result);
      
      result=firstnumber-secondnumber;
      system.debug('Subtraction:'+result);
      
      result=firstnumber*secondnumber;
      system.debug('Multiplication:'+result);
      
      if(secondnumber>0)
      {
          result=firstnumber/secondnumber;
          system.debug('Division:'+result);   
          
           result=Math.mod(firstnumber,secondnumber);
          system.debug('Reminder value is:'+result); 
      }
      else
      {
          system.debug('Math exception because second number should be greater than zero');
      }
    }
}