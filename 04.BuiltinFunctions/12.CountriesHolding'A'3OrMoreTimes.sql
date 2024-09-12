-- Find all countries which hold the letter 'A' at least 3 times in their name
--  (case-insensitively). Sort the result by ISO code and display the 
--  "Country Name" and "ISO Code". 

SELECT
    CountryName AS [Country Name]
    ,IsoCode AS [ISO Code]
FROM Countries
WHERE LEN(CountryName) - LEN(REPLACE(CountryName, 'A', '')) >= 3
ORDER BY [ISOCode]