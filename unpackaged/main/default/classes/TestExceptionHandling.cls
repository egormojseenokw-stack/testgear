@isTest
public class TestExceptionHandling {
    @isTest
    static void testException() {
        Boolean exceptionThrown = false;
        try {
            Account acc = new Account(); // Name required
            insert acc;
        } catch(DmlException e) {
            exceptionThrown = true;
        }
        System.assert(exceptionThrown, 'DML exception should be thrown when inserting account without name');
    }
}