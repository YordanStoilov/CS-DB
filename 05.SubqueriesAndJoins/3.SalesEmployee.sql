-- Write a query that selects:
-- •	EmployeeID -> Employees
-- •	FirstName -> Employees
-- •	LastName -> Employees
-- •	DepartmentName -> Employees.DepartmentID -> Departments.DepartmentID
-- Sorted by EmployeeID in ascending order. Select only employees from "Sales" department.

 SELECT
    e.EmployeeID
    ,e.FirstName
    ,e.LastName
    ,d.Name AS [DepartmentName]
FROM Employees AS e
JOIN Departments AS d
ON e.DepartmentID = d.DepartmentID
WHERE d.Name = 'Sales'
ORDER BY e.EmployeeID