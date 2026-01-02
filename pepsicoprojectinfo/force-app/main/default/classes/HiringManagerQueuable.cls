global class HiringManagerQueuable implements system.queueable
{
  global void execute(system.queueablecontext qcontext)
  {
      Hiringmanager__c hr = new Hiringmanager__c();
      hr.hrname__c = 'praveen kumar';
      hr.hremail__c = 'praveen@gmail.com';
      hr.hrphone__c = '+192102910';
      hr.Location__c = 'Hyderabad';
      
      insert hr;
      
      if(hr.Id !=null)
      {
          system.debug('Hiringmanager record id.'+hr.Id);
          
          Id posJobId = system.enqueueJob(new PositionsQueuable(hr));
      }
          
  }
}