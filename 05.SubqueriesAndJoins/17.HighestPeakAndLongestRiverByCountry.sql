-- For each country, find the elevation of the highest peak and the length 
-- of the longest river, sorted by the highest peak elevation (from highest to lowest), 
-- then by the longest river length (from longest to smallest), then by country name 
-- (alphabetically). Display NULL when no data is available in some of the columns. 
-- Limit only the first 5 rows.

SELECT TOP 5
    RiverQuery.CountryName
    ,RiverQuery.Elevation AS [HighestPeakElevation]
    ,RiverQuery.Length 
FROM

(SELECT
    c.CountryName
    ,r.Length
    ,DENSE_RANK() OVER (PARTITION BY c.CountryCode ORDER BY p.Elevation DESC ,r.Length DESC) AS [Rank]
    ,p.Elevation AS [Elevation]
FROM [Countries] c
JOIN [CountriesRivers] cr
ON c.CountryCode = cr.CountryCode
RIGHT JOIN [Rivers] r 
ON cr.RiverID = r.ID
JOIN [MountainsCountries] mc
ON mc.CountryCode = c.CountryCode
RIGHT JOIN [Mountains] m 
ON mc.MountainID = m.ID
JOIN [Peaks] p 
ON p.MountainID = m.ID) AS RiverQuery
WHERE Rank = 1
ORDER BY RiverQuery.Elevation DESC ,RiverQuery.Length DESC, RiverQuery.CountryName