@isTest
public class TestUpdateContact {
    @isTest
    static void testContactUpdate() {
        Contact con = new Contact(FirstName = 'John', LastName = 'Doe');
        insert con;

        con.LastName = 'Smith';
        update con;

        Contact fetchedCon = [SELECT LastName FROM Contact WHERE Id = :con.Id];
        System.assertEquals('Smith', fetchedCon.LastName);
    }
}