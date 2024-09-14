-- Write a query that selects:
-- •	CountryCode
-- •	MountainRange
-- •	PeakName
-- •	Elevation
-- Filter all peaks in Bulgaria with elevation over 2835. 
-- Return all the rows sorted by elevation in descending order.

SELECT 
    c.CountryCode
    ,m.MountainRange
    ,p.PeakName
    ,p.Elevation
FROM Countries AS c
JOIN MountainsCountries AS mc ON mc.CountryCode = c.CountryCode AND c.CountryCode = 'BG'
JOIN Mountains AS m ON mc.MountainId = m.Id
JOIN Peaks AS p ON m.Id = p.MountainId AND p.Elevation > 2835
ORDER BY p.Elevation DESC