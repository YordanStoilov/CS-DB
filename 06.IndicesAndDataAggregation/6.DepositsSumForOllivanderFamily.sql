-- Select all deposit groups and their total deposit sums, but only for the wizards, 
-- who have their magic wands crafted by the Ollivander family.

SELECT
    DepositGroup
    ,SUM(DepositAmount) AS [TotalSum]
FROM WizzardDeposits
GROUP BY DepositGroup, MagicWandCreator
HAVING MagicWandCreator = 'Ollivander family'