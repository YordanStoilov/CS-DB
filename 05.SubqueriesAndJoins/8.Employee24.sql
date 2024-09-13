-- Write a query that selects:
-- •	EmployeeID
-- •	FirstName
-- •	ProjectName
-- Filter all the projects of employee with Id 24. If the project has started 
-- during or after 2005 the returned value should be NULL.

SELECT TOP 5
    e.EmployeeID
    ,e.FirstName
    ,p.Name AS [ProjectName]
FROM Employees AS e
JOIN EmployeesProjects AS ep 
ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects AS p
ON p.ProjectID = ep.ProjectID
AND p.StartDate < '2005-01-01'
WHERE e.EmployeeID = 24