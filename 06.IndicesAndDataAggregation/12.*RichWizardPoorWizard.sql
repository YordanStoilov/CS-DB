-- You compare the deposits of every wizard with the wizard after him. 
-- If a wizard is the last one in the database, simply ignore it. 
-- In the end you have to sum the difference between the deposits.
-- At the end your query should return a single value: the SUM of all differences.

WITH WizardDeposits AS 
(
    SELECT 
        ID,
        DepositAmount,
        LEAD(DepositAmount) OVER (ORDER BY ID) AS NextDeposit
    FROM WizzardDeposits
)
SELECT
    SUM(DepositAmount - NextDeposit)
FROM WizardDeposits
WHERE NextDeposit IS NOT NULL