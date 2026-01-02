public class TaskService 
{
  public static void InvalidEmailAddress(List<SObject> taskList) {
    for (SObject sObj : taskList) {
        Task t = (Task) sObj;

        if (t.Subject != null && t.Subject.toLowerCase().contains('email')) {
            if (t.Description != null && t.Description.contains('.invalid')) {
                t.addError('Cannot send or log emails using an invalid or unverified email address.');
            }
        }
    }
}
}