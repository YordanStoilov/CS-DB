-- Create a query that returns:
-- •	FirstName
-- •	LastName
-- •	DepartmentID
-- Select all employees who have salary higher than the average salary of 
-- their respective departments. Select only the first 10 rows. 
-- Order them by DepartmentID.

SELECT TOP 10
    FirstName,
    LastName,
    EmpEx.DepartmentID
FROM Employees AS EmpEx
WHERE Salary > 
(
    SELECT TOP 1
        AVG(Salary) AS AvgSalary
    FROM Employees AS EmpInt
    WHERE EmpEx.DepartmentID = EmpInt.DepartmentID
    GROUP BY DepartmentID
)
ORDER BY DepartmentID