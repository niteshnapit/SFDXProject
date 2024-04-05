public with sharing class AccountController {

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(Integer limitSize, Integer offset){
        List<Account> accountList = [SELECT Id,Name,Rating
                                     FROM Account
                                     ORDER BY CreatedDate
                                     LIMIT :limitSize
                                     OFFSET :offset
                                     ];
        return accountList;
    }

    @AuraEnabled(cacheable=true) 
    public static List<Account> totalAccounts() {
        List <Account> totalacc = [Select Id From Account];
        return totalacc;
    } 
}
