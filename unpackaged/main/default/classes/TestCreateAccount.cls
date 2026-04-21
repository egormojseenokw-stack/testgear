@isTest
public class TestCreateAccount {
    @isTest
    static void testAccountCreation() {
        Account acc = new Account(Name = 'Test Account');
        insert acc;

        Account fetchedAcc = [SELECT Id, Name FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Test Account', fetchedAcc.Name);
    }
}