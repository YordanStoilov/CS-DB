-- Create a stored procedure usp_EmployeesBySalaryLevel that receives as parameter 
-- level of salary (low, average, or high) and print the names of all employees, 
-- who have the given level of salary. You should use the function - 
-- "dbo.ufn_GetSalaryLevel(@Salary)", which was part of the previous task, 
-- inside your "CREATE PROCEDURE …" query.

CREATE OR ALTER PROC usp_EmployeesBySalaryLevel @LevelOfSalary VARCHAR(10)
AS
    SELECT
    FirstName,
    LastName
FROM Employees
WHERE dbo.ufn_GetSalaryLevel(Salary) = @LevelOfSalary
