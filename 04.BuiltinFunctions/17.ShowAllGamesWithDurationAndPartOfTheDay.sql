-- Find all games with part of the day and duration. Sort them by game name alphabetically,
--  then by duration (alphabetically, not by the timespan) and part of the day 
--  (all ascending). Part of the Day should be Morning (time is >= 0 and < 12), 
--  Afternoon (time is >= 12 and < 18), Evening (time is >= 18 and < 24). 
--  Duration should be Extra Short (smaller or equal to 3), 
--  Short (between 4 and 6 including), Long (greater than 6) and 
--  Extra Long (without duration). 
SELECT * FROM 

(SELECT
    [Name] as [Game]
    ,CASE 
        WHEN DATEPART(HOUR, [Start]) BETWEEN 0 AND 11 THEN 'Morning'
        WHEN DATEPART(HOUR, [Start]) BETWEEN 12 AND 17 THEN 'Afternoon'
        WHEN DATEPART(HOUR, [Start]) BETWEEN 18 AND 23 THEN 'Evening'
    END AS [Part of the Day]
    ,CASE
        WHEN Duration <= 3 THEN 'Extra Short'
        WHEN Duration BETWEEN 4 AND 6 THEN 'Short'
        WHEN Duration > 6 THEN 'Long'
        ELSE 'Extra Long'
    END AS [Duration]
FROM Games) AS [Data]
ORDER BY [Game], [Duration], [Part of the Day]