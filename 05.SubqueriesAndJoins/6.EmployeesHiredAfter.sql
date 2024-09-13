-- Write a query that selects:
-- •	FirstName
-- •	LastName
-- •	HireDate
-- •	DeptName
-- Filter only employees hired after 1.1.1999 and are from either 
-- "Sales" or "Finance" departments, sorted by HireDate (ascending).

SELECT
    e.FirstName
    ,e.LastName
    ,e.HireDate
    ,d.Name AS [DeptName]
FROM Employees AS e
JOIN Departments AS d
ON e.DepartmentID = d.DepartmentID
AND e.HireDate > '1999-01-01'
AND d.Name IN ('Sales', 'Finance')
ORDER BY e.HireDate