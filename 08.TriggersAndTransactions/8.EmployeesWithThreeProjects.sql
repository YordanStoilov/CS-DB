
CREATE OR ALTER PROC usp_AssignProject(@employeeId INT, @projectID INT)
AS
BEGIN
    BEGIN TRANSACTION
        IF
            (SELECT
                COUNT(*)
            FROM
                Employees e
            JOIN
                EmployeesProjects ep
            ON
                e.EmployeeID = ep.EmployeeID
            JOIN
                Projects p
            ON
                ep.ProjectID = p.ProjectID
            WHERE e.EmployeeID = @employeeId) >= 3
        BEGIN
            RAISERROR('The employee has too many projects!', 16, 1);
            ROLLBACK TRANSACTION
        END

        ELSE
        BEGIN
            INSERT INTO EmployeesProjects(EmployeeID, ProjectID)
            VALUES (@employeeId, @projectID)
            COMMIT TRANSACTION
        END
END