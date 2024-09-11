-- Create a SQL query that finds the first and last names of every employee, 
-- whose job title does not contain "engineer". 
-- JobTitle column

SELECT
    FirstName
    ,LastName 
FROM Employees
WHERE CHARINDEX('engineer', JobTitle) = 0;