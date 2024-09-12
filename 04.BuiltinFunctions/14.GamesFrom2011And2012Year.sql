-- Find and display the top 50 games which start date is from 2011 and 2012 year. 
-- Order them by start date, then by name of the game. 
-- The start date should be in the following format: "yyyy-MM-dd". 

SELECT TOP(50)
    [Name]
    ,CONCAT_WS('-', 
        YEAR([Start])
        ,FORMAT(MONTH([Start]), '00', 'en-US')
        , FORMAT(DAY([Start]), '00', 'en-US')) AS [Start]
FROM Games
WHERE YEAR([Start]) IN (2011, 2012)
ORDER BY [Start], [Name]