-- Write a query that selects:
-- •	EmployeeID
-- •	FirstName
-- •	Salary
-- •	DepartmentName
-- Filter only employees with salary higher than 15000. Return the first 5 rows sorted by DepartmentID in ascending order.

SELECT TOP 5
    e.EmployeeID
    ,e.FirstName
    ,e.Salary
    ,d.Name AS [DepartmentName]
FROM Employees AS e
JOIN Departments AS d
ON e.DepartmentID = d.DepartmentID AND e.Salary > 15000
ORDER BY e.DepartmentID