@isTest
public class TestDeleteOpportunity {
    @isTest
    static void testOpportunityDeletion() {
        Opportunity opp = new Opportunity(
            Name = 'Test Opp',
            StageName = 'Prospecting',
            CloseDate = Date.today()
        );
        insert opp;

        delete opp;

        Integer countOpp = [SELECT COUNT() FROM Opportunity WHERE Id = :opp.Id];
        System.assertEquals(0, countOpp);
    }
}