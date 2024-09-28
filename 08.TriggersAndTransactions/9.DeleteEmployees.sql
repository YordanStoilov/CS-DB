
CREATE OR ALTER TRIGGER tr_SaveFiredEmployeesToDeletedEmployeesTable
ON Employees
AFTER DELETE
AS
BEGIN
    SET IDENTITY_INSERT Deleted_Employees ON;
        INSERT INTO Deleted_Employees (
            EmployeeId,
            FirstName,
            LastName,
            MiddleName,
            JobTitle,
            DepartmentId,
            Salary)
        SELECT
            EmployeeId,
            FirstName,
            LastName,
            MiddleName,
            JobTitle,
            DepartmentId,
            Salary
        FROM deleted
    SET IDENTITY_INSERT Deleted_Employees OFF;
END;

