@isTest
public class TestSOQLQuery {
    @isTest
    static void testAccountQuery() {
        Account acc = new Account(Name = 'SOQL Test');
        insert acc;

        List<Account> accList = [SELECT Id, Name FROM Account WHERE Name = 'SOQL Test'];
        System.assertEquals(1, accList.size());
        System.assertEquals('SOQL Test', accList[0].Name);
    }
}