global class PositionsQueuable implements system.queueable
{
    Hiringmanager__c hrrecord;
    
   public PositionsQueuable(Hiringmanager__c hr)
   {
       hrrecord = hr;
   }
  global void execute(system.queueablecontext qcontext)
  {
      Position__c pos = new Position__c();
      pos.Position_Name__c = 'sfdc developer';
      pos.Location__c = hrrecord.Location__c;
      pos.Hr_emailid__c = hrrecord.hremail__c;
      pos.Hr_contact_number__c = hrrecord.hrphone__c;
      
      insert pos;
      
      if(pos.Id !=null)
      {
          system.debug('position record:'+pos.Id);
      }
  }
}