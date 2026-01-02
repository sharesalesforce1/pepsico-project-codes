@isTest
public class MathOperationsUtilityTest {

    @isTest
    static void testAddition() {
        Integer result = MathOperationsUtility.Addition(10, 20, 30);
        System.assertEquals(60, result, 'Addition result should be 60');
    }

    @isTest
    static void testMultiply() {
        Integer result = MathOperationsUtility.Multiply(2, 3, 4);
        System.assertEquals(24, result, 'Multiplication result should be 24');
    }

    @isTest
    static void testCheckEqualsTrue() {
        Boolean isEqual = MathOperationsUtility.CheckEquals('Hello', 'Hello');
        System.assertEquals(true, isEqual, 'Strings should be equal');
    }

    @isTest
    static void testCheckEqualsFalse() {
        Boolean isEqual = MathOperationsUtility.CheckEquals('Hello', 'World');
        System.assertEquals(false, isEqual, 'Strings should not be equal');
    }

    @isTest
    static void testCheckEqualsWithCaseTrue() {
        Boolean isEqual = MathOperationsUtility.CheckEqualsWithCase('Apex', 'Apex');
        System.assertEquals(true, isEqual, 'Strings with same case should be equal');
    }

    @isTest
    static void testCheckEqualsWithCaseFalse() {
        Boolean isEqual = MathOperationsUtility.CheckEqualsWithCase('Apex', 'apex');
        System.assertEquals(false, isEqual, 'Strings with different case should not be equal');
    }

    @isTest
    static void testConcatenate() {
        String result = MathOperationsUtility.Concatenate('Sales', 'force');
        System.assertEquals('Salesforce', result, 'Strings should be concatenated properly');
    }
}