-- Find all the count of all countries, which don’t have a mountain.

SELECT COUNT(*)
FROM 
    [Countries] c
LEFT JOIN
    [MountainsCountries] mc 
ON 
    mc.CountryCode = c.CountryCode
LEFT JOIN 
    [Mountains] m
ON m.ID = mc.MountainID
WHERE m.ID IS NULL