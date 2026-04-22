@isTest
public class TestAccountHelper {
    @isTest
    static void testRenameAccount() {
        Account acc = new Account(Name = 'Old Name');
        insert acc;

        AccountHelper.renameAccount(acc.Id, 'New Name');

        Account updatedAcc = [SELECT Name FROM Account WHERE Id = :acc.Id];
        System.assertEquals('New Name', updatedAcc.Name);
    }
}