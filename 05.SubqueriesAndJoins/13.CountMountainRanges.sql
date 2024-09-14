-- Write a query that selects:
-- •	CountryCode
-- •	MountainRange
-- Filter the count of the mountain ranges in the United States, Russia and Bulgaria.

SELECT 
    c.CountryCode
    ,COUNT(m.MountainRange)
FROM Countries AS c 
JOIN MountainsCountries AS mc ON c.CountryCode = mc.CountryCode
AND c.CountryCode IN ('US', 'RU', 'BG')
JOIN Mountains AS m ON mc.MountainId = m.Id
GROUP BY c.CountryCode