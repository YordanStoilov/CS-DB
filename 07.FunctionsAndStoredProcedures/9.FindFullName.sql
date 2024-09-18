-- You are given a database schema with tables AccountHolders(Id (PK), FirstName, LastName,
--  SSN) and Accounts(Id (PK), AccountHolderId (FK), Balance).  
--  Write a stored procedure usp_GetHoldersFullName that selects the full name of all people.

CREATE OR ALTER PROC usp_GetHoldersFullName
AS
SELECT 
    CONCAT_WS(' ', FirstName, LastName) AS [Full Name]
FROM AccountHolders