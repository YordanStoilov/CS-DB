-- Write a query that selects:
-- •	EmployeeID
-- •	FirstName
-- Filter only employees without a project. Return the first 3 rows sorted by EmployeeID in ascending order.

SELECT TOP 3
    EmployeeID
    ,FirstName
FROM Employees
WHERE EmployeeID NOT IN 
(SELECT EmployeeID FROM EmployeesProjects)
ORDER BY EmployeeID