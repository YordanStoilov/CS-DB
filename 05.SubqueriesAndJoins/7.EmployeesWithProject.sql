-- Write a query that selects:
-- •	EmployeeID
-- •	FirstName
-- •	ProjectName
-- Filter only employees with a project which has started after 13.08.2002 and 
-- it is still ongoing (no end date). Return the first 5 rows sorted by 
-- EmployeeID in ascending order.

SELECT TOP 5
    e.EmployeeID
    ,e.FirstName
    ,p.Name AS [ProjectName]
FROM Employees AS e
JOIN EmployeesProjects AS ep 
ON e.EmployeeID = ep.EmployeeID
JOIN Projects AS p
ON p.ProjectID = ep.ProjectID
AND p.StartDate > '2002-08-13'
AND p.EndDate IS NULL
ORDER BY ep.EmployeeID