-- CREATE TABLE NotificationEmails(
--     Id INT IDENTITY PRIMARY KEY,
--     Recipient INT NOT NULL,
--     [Subject] VARCHAR(255) NOT NULL,
--     Body VARCHAR(255) NOT NULL
-- )

CREATE OR ALTER TRIGGER tr_LogInformationInEmailFormat
ON Accounts
AFTER UPDATE
AS
BEGIN
    INSERT INTO 
        NotificationEmails(Recipient, [Subject], Body)
    SELECT
        d.AccountHolderId AS [Recipient],
        'Balance change for account: ' + CAST(d.ID AS VARCHAR(10)) AS [Subject],
        'On ' + FORMAT(GETDATE(), 'MMM dd yyyy h:mmtt') + ' your balance was changed from ' + FORMAT(d.Balance, 'N2') + ' to ' + FORMAT(i.Balance, 'N2') + '.' AS [Body]
    FROM
        deleted AS d
    JOIN
        inserted AS i
    ON
        d.Id = i.Id
END;

BEGIN TRANSACTION
    UPDATE Accounts
    SET Balance = CAST(100 AS MONEY)
    WHERE Id = 3
ROLLBACK