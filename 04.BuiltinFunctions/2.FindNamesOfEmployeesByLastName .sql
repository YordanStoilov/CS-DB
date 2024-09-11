-- Create a SQL query that finds all employees whose last name contains "ei". As a result, 
-- display "FirstName" and "LastName".

SELECT 
    FirstName, 
    LastName 
FROM 
    Employees
WHERE CHARINDEX('ei', LastName) <> 0;