public class MixedDmlWithPermissionSet 
{
    public static void causeMixedDml() 
    {
        // Insert the non-setup object (Case)
        Case c = new Case();
        c.Subject = 'Mixed DML Case';
        c.Status = 'New';
        c.Origin = 'Web';
        insert c;

        // Call future method to insert setup object
        assignPermissionSetAsync();
    }

    @future
    public static void assignPermissionSetAsync() 
    {
        User u = [SELECT Id FROM User WHERE IsActive = TRUE LIMIT 1];
        PermissionSet ps = [SELECT Id FROM PermissionSet WHERE Name = 'Account_permission' LIMIT 1];

        PermissionSetAssignment psa = new PermissionSetAssignment();
        psa.AssigneeId = u.Id;
        psa.PermissionSetId = ps.Id;

        insert psa;
    }
}