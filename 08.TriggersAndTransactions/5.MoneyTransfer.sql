CREATE OR ALTER PROC usp_TransferMoney(@SenderId INT, @ReceiverId INT, @Amount DECIMAL(18, 4))
AS
BEGIN
BEGIN TRANSACTION
    IF @Amount > 0
    BEGIN
        EXEC [dbo].usp_WithdrawMoney @SenderId, @Amount
        EXEC [dbo].usp_DepositMoney @ReceiverId, @Amount
    END
COMMIT TRANSACTION
END