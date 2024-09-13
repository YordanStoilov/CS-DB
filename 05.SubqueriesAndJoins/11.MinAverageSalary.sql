-- Write a query that returns the value of the lowest average salary of all departments.

SELECT MIN(dt.Salary) AS [MinAverageSalary]
FROM
(SELECT
    AVG(e.Salary) AS [Salary]
FROM 
    Employees AS e
JOIN
    Departments AS d
ON
    e.DepartmentID = d.DepartmentID
GROUP BY (e.DepartmentID)) AS dt
