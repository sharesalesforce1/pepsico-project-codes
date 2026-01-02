public class Todaystasks 
{
  public Todaystasks()
  {
      takeshower();
      havebreakfast();
      carservicing();
      moviewithfrend();
  }
    
  public static void takeshower()
  {
      system.debug('Taking shower');
  }
   
   public static void havebreakfast()
   {
       integer a=10,b=200;
       system.debug('breakfast');
       integer result=a+b;
       system.debug('Result:'+result);
   }
    
   @future()
   public static void carservicing()
   {
       system.debug('car servicing');
   }
    
   public static void moviewithfrend()
   {
       system.debug('Movie with frnd');
   }
}