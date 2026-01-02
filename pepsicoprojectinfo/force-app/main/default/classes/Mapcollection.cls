public class Mapcollection 
{
  public static void method1()
  {
      Map<Integer,string>colors = new Map<Integer,string>();
      Map<Integer,string>morecolors = new Map<Integer,string>();
      Map<Integer,string>clonedmap = new Map<Integer,string>();
      
      set<Integer>intset = new set<Integer>();
      List<string>strlist = new List<String>();
      
      colors.put(1,'Green');
      colors.put(2,'Blue');
      colors.put(3,'Red');
      colors.put(4,'Blue');
      
      system.debug('Map contains:'+colors);
      
      colors.put(2,'Yellow');
      system.debug('Map contains:'+colors);
      
      morecolors.put(10,'Black');
      morecolors.put(20,'White');
      
      colors.putall(morecolors);
      system.debug('Map:'+colors);
      
      colors.remove(1);
      system.debug('Map:'+colors);
      system.debug('Map:'+colors.size());
      system.debug('Map:'+colors.values());
      
      clonedmap=colors.clone();
      system.debug('Map:'+clonedmap);
      system.debug('Map:'+clonedmap.containskey(50));
      
      if(clonedmap.containskey(10))
      {
          system.debug('element found in the collection');
      }
      else
      {
          system.debug('element not found in the collection');
      }
      
      system.debug('Map:'+clonedmap.equals(colors));
      system.debug('Map:'+clonedmap.equals(morecolors));
      system.debug('Map:'+clonedmap.get(20));
      system.debug('Map..'+clonedmap.isempty());
      system.debug('Map..'+clonedmap.keyset());
      
      clonedmap.put(10,'Blue');
      system.debug(clonedmap);
      intset = clonedmap.keyset(); //[2,3,4,10,20]
      strlist = clonedmap.values(); //['Green','Red',....]
      
      system.debug(intset);
      system.debug(strlist);
  }
    
   public static void method2()
   {
       List<Account>acclist = new List<Account>();
       Map<Id,Account>accmap = new Map<Id,Account>();
       
       acclist = [select id,name from Account limit 5];
       
       accmap.putall(acclist);
       
       system.debug(accmap);
       
   }
}