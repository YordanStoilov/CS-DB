-- Count the salaries of all employees, who don’t have a manager.

SELECT
    COUNT(*)
FROM Employees
GROUP BY ManagerID
HAVING ManagerID IS NULL