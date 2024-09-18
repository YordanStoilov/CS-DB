-- Your task is to create a stored procedure usp_GetHoldersWithBalanceHigherThan 
-- that accepts a number as a parameter and returns all the people, who have 
-- more money in total in all their accounts than the supplied number. 
-- Order them by their first name, then by their last name.

CREATE OR ALTER PROC usp_GetHoldersWithBalanceHigherThan @number FLOAT
AS
SELECT FirstName AS [First Name], LastName  AS [Last Name]
FROM
    (
        SELECT 
        FirstName,
        LastName,
        SUM(Balance) AS [TotalBalance]
        FROM AccountHolders AS ah
        JOIN Accounts AS a
        ON a.AccountHolderId = ah.Id
        GROUP BY FirstName, LastName
    ) AS dt
WHERE dt.TotalBalance > @number
ORDER BY FirstName, LastName