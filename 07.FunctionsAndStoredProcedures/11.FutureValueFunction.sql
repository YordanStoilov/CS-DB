-- Your task is to create a function ufn_CalculateFutureValue that accepts as parameters 
-- – sum (decimal), yearly interest rate (float), and the number of years (int). 
-- It should calculate and return the future value of the initial sum rounded up to the 
-- fourth digit after the decimal delimiter. Use the following formula:
-- FV=I×(〖(1+R)〗^T)

-- •	I – Initial sum
-- •	R – Yearly interest rate
-- •	T – Number of years

CREATE OR ALTER FUNCTION ufn_CalculateFutureValue
(@initialSum DECIMAL(18,4), @yearlyInterestRate FLOAT, @numberOfyears INT)
RETURNS DECIMAL(14,4)
AS
BEGIN
    DECLARE @result DECIMAL(14, 4)
    SET @result = @initialSum * POWER((1 + @yearlyInterestRate), @numberOfyears)
    RETURN @result
END
