-- Find the third highest salary in each department if there is such. 
SELECT DISTINCT
    sr.DepartmentID,
    sr.Salary
FROM
(SELECT
    DepartmentID,
    Salary,
    DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS [SalaryRank]
FROM
    Employees) AS sr
WHERE sr.SalaryRank = 3