public class MyApex9 
{
 public static void method2(integer english,integer maths,integer physics,integer chemistry,integer hindi)
 {
     integer result=english+maths+physics+chemistry+hindi;
     
     if(english >40 && maths>40 && physics>40 && chemistry>40 && hindi>40)
     {
          
          system.debug('Result is:'+result);
          decimal average = result/5;
         
          system.debug('average is:'+average);
         
          if(average>=60)
          {
              system.debug('Grade-a');
          }
         else if(average>=50 && average<60)
         {
             system.debug('Grade-b');
         }
         else if(average>=40 && average<50)
         {
             system.debug('Grade-c');
         }
     }
     else
         {
             system.debug('failed');
             system.debug('Result of yours:'+result);
         }
 }
}