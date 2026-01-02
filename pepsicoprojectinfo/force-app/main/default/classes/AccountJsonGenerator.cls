public class AccountJsonGenerator 
{
  public static void method1()
  {
      List<Account>lstaccounts = [select id,Name,Rating,Industry,Annualrevenue,Type,Phone,Fax,Active__C from Account];
      
      //create the jsongenerator
      System.JSONGenerator accGen = system.JSON.createGenerator(true);
      
      accGen.writeStartObject();
      accGen.writeFieldName('AccountRecords');
      accGen.writeStartArray();
      if(!lstaccounts.isempty())
      {
          for(Account acc : lstaccounts)
          {
              accGen.writestartObject();
              accGen.writeIdField('ID',acc.Id);
              
              if(acc.Rating == null || acc.Rating == '')
                  accGen.writeNullField('Rating');
              else
                 accGen.writeStringField('Rating',acc.Rating);
              
               if(acc.Industry == null || acc.Industry == '')
                  accGen.writeNullField('Industry');
              else
                 accGen.writeStringField('Industry',acc.Industry);
              
               if(acc.Annualrevenue == null)
                  accGen.writeNullField('Annualrevenue');
              else
                 accGen.writeNumberField('Annualrevenue',acc.Annualrevenue);
              
                if(acc.Type == null || acc.Type == '')
                  accGen.writeNullField('Type');
              else
                 accGen.writeStringField('Type',acc.Type);
              
              if(acc.Phone == null || acc.Phone == '')
                  accGen.writeNullField('Phone');
              else
                 accGen.writeStringField('Phone',acc.Phone);
              
              if(acc.Fax == null || acc.Fax == '')
                  accGen.writeNullField('Fax');
              else
                 accGen.writeStringField('Fax',acc.Fax);
              
               if(acc.Active__c == null || acc.Active__c == '')
                  accGen.writeNullField('Active__c');
              else
                 accGen.writeStringField('Active__c',acc.Active__c);
              
              accGen.writeEndObject();
          }
      }
      
      accGen.writeEndArray();
      accGen.writeEndObject();
      
      system.debug('JSON content:'+accGen.getAsstring());
  }
}