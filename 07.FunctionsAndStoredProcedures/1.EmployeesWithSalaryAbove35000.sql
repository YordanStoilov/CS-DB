-- Create stored procedure usp_GetEmployeesSalaryAbove35000 that returns all 
-- employees' first and last names, whose salary above 35000. 

CREATE OR ALTER PROC usp_GetEmployeesSalaryAbove35000 AS
    SELECT 
        FirstName,
        LastName
    FROM Employees
    WHERE Salary > 35000

EXEC usp_GetEmployeesSalaryAbove35000