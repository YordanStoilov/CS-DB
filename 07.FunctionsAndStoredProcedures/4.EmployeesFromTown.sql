-- Create a stored procedure usp_GetEmployeesFromTown that accepts town name 
-- as parameter and returns the first and last name of those employees, 
-- who live in the given town.

CREATE OR ALTER PROC usp_GetEmployeesFromTown @TownName VARCHAR(MAX)
AS
SELECT
    FirstName
    ,LastName
FROM Employees AS e
JOIN Addresses AS a
ON e.AddressID = a.AddressID
JOIN Towns AS t
ON a.TownID = t.TownID
WHERE t.Name = @TownName
