public class Databasehelper12 
{
  public static void deletehrrecords(string startingchars)
  {
      Delete [select id,hrname__c from Hiringmanager__c where hrname__c like :startingchars+'%'];
  }
}