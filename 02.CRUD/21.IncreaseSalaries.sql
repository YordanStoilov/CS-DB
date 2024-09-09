-- Create a SQL query that increases salaries by 12% for all employees that work in one of the following departments
--  – Engineering, Tool Design, Marketing or Information Services. As a result, select and display only the "Salaries" 
--  column from the Employees table. After this, you should restore the database to the original data.

BEGIN TRANSACTION

UPDATE Employees
SET Salary = Salary * 1.12
WHERE DepartmentID IN (1, 2, 4, 11)

SELECT Salary FROM Employees;
ROLLBACK;