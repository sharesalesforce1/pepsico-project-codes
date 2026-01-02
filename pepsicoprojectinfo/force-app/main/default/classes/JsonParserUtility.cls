public class JsonParserUtility 
{
  public static void opprecords()
  {
       string opportunityJSON = '[{"Name":"Sirisha","Amount":30000,"StageName":"Prospecting","LeadSource":"Web","CloseDate":"2020-01-20"},{"Name":"Spandana","Amount":40000,"StageName":"Prospecting","LeadSource":"Web","CloseDate":"2020-02-24"},{"Name":"Nagaraju","Amount":50000,"StageName":"Prospecting","LeadSource":"Web","CloseDate":"2020-04-10"},{"Name":"Pratamesh","Amount":50000,"StageName":"Prospecting","LeadSource":"Web","CloseDate":"2020-04-10"}]'; 
      
        //system.JSONParser opParser = system.JSON.createParser(opportunityJSON);
      
        List<Opportunity>lstopportunities = (List<Opportunity>)system.JSON.deserialize(opportunityJSON,List<Opportunity>.class);
      
        insert lstopportunities;
  }
}