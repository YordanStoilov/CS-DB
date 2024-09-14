-- Write a query that selects:
-- •	ContinentCode
-- •	CurrencyCode
-- •	CurrencyUsage
-- Find all continents and their most used currency. 
-- Filter any currency that is used in only one country. 
-- Sort your results by ContinentCode.

SELECT 
    ContinentCode
    ,CurrencyCode
    ,CurrencyUsage
FROM
(SELECT 
    *
    ,DENSE_RANK() OVER (PARTITION BY ContinentCode ORDER BY CurrencyUsage DESC) AS CurrencyRank
FROM
(SELECT
    ContinentCode
    ,CurrencyCode
    ,COUNT(CurrencyCode) AS CurrencyUsage
FROM 
    Countries AS c
GROUP BY ContinentCode, CurrencyCode) AS InnerQuery
WHERE CurrencyUsage > 1) AS MidQuery
WHERE CurrencyRank = 1
ORDER BY ContinentCode