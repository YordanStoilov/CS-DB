
UPDATE Payments
SET TaxRate = 0.97 * TaxRate;

SELECT TaxRate FROM Payments;