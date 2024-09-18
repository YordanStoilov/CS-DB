-- Your task is to create a stored procedure usp_CalculateFutureValueForAccount that uses 
-- the function from the previous problem to give an interest to a persons account for 5 years, 
-- along with information about their account id, first name, last name and current balance 
-- as it is shown in the example below. It should take the AccountId and the interest rate 
-- as parameters. Again, you are provided with the dbo.ufn_CalculateFutureValue function, 
-- which was part of the previous task.


CREATE OR ALTER PROC usp_CalculateFutureValueForAccount @accountID INT, @interestRate FLOAT
AS
BEGIN
    SELECT
        a.Id AS [Account ID],
        ah.FirstName AS [First Name],
        ah.LastName AS [Last Name],
        SUM(a.Balance) AS [Current Balance],
        dbo.ufn_CalculateFutureValue(SUM(a.Balance), @interestRate, 5)
    FROM AccountHolders AS ah
    JOIN Accounts AS a
    ON ah.Id = a.AccountHolderId
    GROUP BY ah.FirstName, ah.LastName, a.Id
    HAVING a.Id = @accountID
END
