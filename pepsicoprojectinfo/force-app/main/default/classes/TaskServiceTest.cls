@isTest
public class TaskServiceTest {

    @isTest
    static void testInvalidEmailAddressMethod() {
        // Create a Task that should trigger addError
        Task t = new Task(
            Subject = 'Email follow-up',
            Description = 'Contact user@example.invalid',
            Status = 'Not Started',
            Priority = 'Normal'
        );

        // Wrap the Task in a List<SObject>
        List<SObject> taskList = new List<SObject>{ t };

        Test.startTest();
        try {
            // Call the method directly
            TaskService.InvalidEmailAddress(taskList);

            // Simulate DML to trigger addError
            insert t;
            System.assert(false, 'Expected DMLException due to addError');
        } catch (DmlException e) {
            System.assert(e.getMessage().contains('invalid or unverified'),
                'Expected error message not found.');
        }
        Test.stopTest();
    }
}