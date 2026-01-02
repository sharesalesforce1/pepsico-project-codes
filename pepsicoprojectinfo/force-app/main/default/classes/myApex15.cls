public class myApex15 
{
  public static void method1()
  {
      List<string>customernames = new List<string>();
      
      system.debug('collection size:'+customernames.size());
      
      customernames.add('Ramesh');
      customernames.add('India');
      customernames.add('Apex');
      customernames.add('Welcome');
      customernames.add('Pawan');
      customernames.add('Germany');
      
      system.debug('collection size:'+customernames.size());
      
      system.debug('collection:'+customernames);
      
      customernames.add(1,'Australia');
      system.debug('collection:'+customernames);
      system.debug('collection size:'+customernames.size());
      
      //adding collection of elements
      string[] countryNames = new String[]{'USA','Uk','Middle East','Germany','Japan','India'};
      customernames.addAll(countryNames);    
      
      system.debug('collection:'+customernames);
      system.debug('collection size:'+customernames.size());
      
      for(string element : customernames)
      {
          system.debug('Element is..:'+element);
      }
      
      
      if(customernames.contains('Germany'))
      {
          system.debug('Element found');
          system.debug('Element index positions..:'+customernames.Indexof('Germany'));
      }
      else
      {
          system.debug('Element not found');
      }
      
      customernames.sort();
      
      system.debug('after sorting the elements');
      
      for(String manasa:customernames)
      {
          system.debug('element:'+manasa);
      }
      
      if(customernames.contains('USA'))
      {
          customernames.set(customernames.Indexof('USA'),'United States');
      }
      else
      {
          system.debug('element not found');
      }
      
      system.debug('after replacing the elements');
      
      for(String element:customernames)
      {
          system.debug('element:'+element);
      }
      
      List<string>backupcopy = new List<string>();
      
      backupcopy = customernames.clone();
      system.debug('Backup copy:'+backupcopy);
      
       for(String element:backupcopy)
      {
          system.debug('element:'+element);
      }
      
      customernames.clear();
        system.debug('collection size:'+customernames.size());
        system.debug('collection size:'+backupcopy.size());
      system.debug('-----');
      system.debug('-----');
      system.debug('-----');
      
  }
}