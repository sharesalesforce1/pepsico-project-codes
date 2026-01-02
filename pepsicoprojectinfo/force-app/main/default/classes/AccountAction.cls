public class AccountAction {
    
    @InvocableMethod
    public static List<String> returnAccount(List<Id> ids) {
        List<String> accountInfoList = new List<String>();

        List<Account> accounts = [
            SELECT Name, Rating, AnnualRevenue 
            FROM Account 
            WHERE Id IN :ids
        ];

        for (Account acc : accounts) {
            String info = 'Name: ' + acc.Name + 
                          ', Rating: ' + acc.Rating + 
                          ', Annual Revenue: ' + acc.AnnualRevenue;
            accountInfoList.add(info);
        }

        return accountInfoList;
    }
}