-- Find the max salary for each department. Filter those, which have max salaries 
-- NOT in the range 30000 – 70000.

SELECT 
    DepartmentID,
    MAX(Salary)
FROM Employees
GROUP BY DepartmentID
HAVING NOT MAX(Salary) BETWEEN 30000 AND 70000