-- Create a query that returns all the unique wizard first letters of their first names
-- only if they have deposit of type Troll Chest. 
-- Order them alphabetically. Use GROUP BY for uniqueness.
SELECT FirstLetter, COUNT(*) AS [NumberOfWizards] FROM

(SELECT
    SUBSTRING(FirstName, 1, 1) AS [FirstLetter]
FROM WizzardDeposits
WHERE DepositGroup = 'Troll Chest') AS [data]
GROUP BY [data].FirstLetter
ORDER BY [data].FirstLetter