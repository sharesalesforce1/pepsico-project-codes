public class DatabaseHelper3 
{
    public static void methodName(String tableName) 
    {
        // Create a DateTime instance for Jan 1, 2025 at 00:00:00 GMT
        DateTime exactDateTime = DateTime.newInstanceGMT(2025, 1, 1, 0, 0, 0);
        
        // Format as ISO8601 (SOQL accepted format)
        String formattedDate = exactDateTime.formatGMT('yyyy-MM-dd\'T\'HH:mm:ss\'Z\'');
        
        // Build query string with the correct DateTime format
        String queryString = 'SELECT Id FROM ' + tableName + ' WHERE CreatedDate >= ' + formattedDate;
        
        // Execute dynamic query
        List<SObject> objects = Database.query(queryString);
        
        // Debug the results
        System.debug(objects);
    }
}