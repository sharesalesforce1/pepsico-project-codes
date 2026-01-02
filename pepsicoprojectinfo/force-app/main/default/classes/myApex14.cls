public class myApex14 
{
  public static void method1()
  {
      Integer[] customercodes = new Integer [5];
      
      system.debug('customer codes:'+customercodes);
      
      customercodes[0]=10;
      customercodes[1]=20;
      customercodes[2]=30;
      customercodes[3]=40;
      customercodes[4]=50;
      
      for(Integer z : customercodes)
      {
          system.debug(z); //10 20 30 40 50
      }
      
      for(integer i=0;i<=4;i++) //i++=1
      {
          system.debug(customercodes[i]);
      }
  }
    
   public static void method2()
   {
       String[] countrynames = new String[]{'India','Usa','Uk','Canada','Australia'};
           
           system.debug(countrynames);
       
       for(String con : countrynames)
       {
           system.debug(con); //India usa uk canada Australia
       }
   }
    
   public static void method3()
   {
       String[] accountnumbers = new String[]{'001gK0000098vNKQAY','001gK0000098vNJQAY','001gK0000047Rz4QAE'};
       system.debug(accountnumbers);
       
       for(String acc : accountnumbers)
       {
           system.debug(acc);
       }
   }
}