-- Create a procedure with the name usp_DeleteEmployeesFromDepartment (@departmentId INT) 
-- which deletes all Employees from a given department. Delete these departments from 
-- the Departments table too. Finally, SELECT the number of employees from the given 
-- department. If the delete statements are correct the select query should return 0.
-- After completing that exercise restore your database to revert all changes.
-- Hint:
-- You may set ManagerID column in Departments table to nullable 
-- (using query "ALTER TABLE …").


CREATE OR ALTER PROC usp_DeleteEmployeesFromDepartment @departmentId INT
AS
BEGIN
    DECLARE @employeesToBeDeleted TABLE (ID INT);

    INSERT INTO @employeesToBeDeleted(ID)
    SELECT EmployeeID
    FROM Employees
    WHERE DepartmentId = @departmentId;

    ALTER TABLE Departments
    ALTER COLUMN ManagerID INT;

    UPDATE Departments
    SET ManagerID = NULL
    WHERE ManagerID IN (SELECT * FROM @employeesToBeDeleted);

    UPDATE Employees
    SET ManagerID = NULL
    WHERE ManagerID IN (SELECT * FROM @employeesToBeDeleted);

    DELETE FROM EmployeesProjects
    WHERE EmployeeID IN (SELECT * FROM @employeesToBeDeleted);

    DELETE FROM Employees
    WHERE DepartmentID = @departmentId;

    DELETE FROM Departments
    WHERE DepartmentID = @departmentId;

    SELECT 
        COUNT(*)
    FROM Employees
    WHERE DepartmentID = @departmentId
END
