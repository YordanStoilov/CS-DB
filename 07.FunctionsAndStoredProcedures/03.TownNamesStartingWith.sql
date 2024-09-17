-- Create a stored procedure usp_GetTownsStartingWith that accepts a string as 
-- parameter and returns all town names starting with that string. 

CREATE OR ALTER PROC usp_GetTownsStartingWith @StartingChar VARCHAR(10)
AS 
SELECT 
    [Name]
FROM Towns
WHERE [Name] LIKE @StartingChar + '%'
