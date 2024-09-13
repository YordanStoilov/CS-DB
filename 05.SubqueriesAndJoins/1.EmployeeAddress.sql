-- Write a query that selects:
-- •	EmployeeId -> Employees
-- •	JobTitle -> Employees
-- •	AddressId -> Employees
-- •	AddressText -> Addresses
-- Return the first 5 rows sorted by AddressId in ascending order.

SELECT TOP 5
    e.EmployeeId
    ,e.JobTitle
    ,e.AddressID
    ,a.AddressText
FROM Employees AS e
JOIN Addresses AS a
ON e.AddressID = a.AddressID
ORDER BY e.AddressID;