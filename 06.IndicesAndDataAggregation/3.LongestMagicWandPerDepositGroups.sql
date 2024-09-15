-- For wizards in each deposit group show the longest magic wand.
-- Rename the new column appropriately.

SELECT
    DepositGroup
    ,MAX(MagicWandSize) AS [LongestMagicWand]
FROM 
    WizzardDeposits
GROUP BY DepositGroup