-- CREATE TABLE Logs (
--     LogId INT IDENTITY PRIMARY KEY,
--     AccountId INT NOT NULL,
--     OldSum MONEY NOT NULL,
--     NewSum MONEY NOT NULL
-- )

CREATE OR ALTER TRIGGER tr_CreateLogsWhenSumOfAccountChange
ON Accounts
AFTER UPDATE
AS
BEGIN
    INSERT INTO Logs(AccountId, OldSum, NewSum)
        SELECT
            d.Id AS [AccountId],
            d.Balance AS [OldSum],
            i.Balance AS [NewSum]
        FROM
            deleted AS d
        JOIN
            inserted AS i
        ON
            d.Id = i.Id
END;