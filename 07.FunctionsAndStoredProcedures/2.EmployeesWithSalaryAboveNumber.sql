-- Create a stored procedure usp_GetEmployeesSalaryAboveNumber that accepts a number 
-- (of type DECIMAL(18,4)) as parameter and returns all employees first and last names, 
-- whose salary is above or equal to the given number.

CREATE OR ALTER PROC usp_GetEmployeesSalaryAboveNumber @Threshold DECIMAL(18,4)
AS 
SELECT
    FirstName
    ,LastName
FROM Employees 
WHERE Salary >= @Threshold
