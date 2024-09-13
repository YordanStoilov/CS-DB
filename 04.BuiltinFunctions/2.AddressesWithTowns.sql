-- Write a query that selects:
-- •	FirstName -> Employees
-- •	LastName -> Employees
-- •	Town -> Employees.AddressID -> Addresses.AddressID -> Towns.TownId
-- •	AddressText -> Addresses.AddressText
-- Sorted by FirstName in ascending order then by LastName. Select first 50 employees.

SELECT TOP 50
    e.FirstName
    ,e.LastName
    ,t.Name AS [Town]
    ,a.AddressText
FROM Employees AS e
JOIN Addresses AS a
ON e.AddressID = a.AddressID
JOIN Towns AS t
ON t.TownID = a.TownID
ORDER BY e.FirstName, e.LastName