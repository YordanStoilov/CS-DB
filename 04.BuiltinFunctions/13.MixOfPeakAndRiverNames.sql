-- Combine all peak names with all river names, so that the last letter of each 
-- peak name is the same as the first letter of its corresponding river name.
-- Display the peak names, river names and the obtained mix (mix should be in lowercase). 
-- Sort the results by the obtained mix.

SELECT
    PeakName
    ,RiverName
    ,CONCAT(LOWER(SUBSTRING(PeakName, 1, LEN(PeakName) - 1)), LOWER(RiverName)) AS [Mix]
FROM 
    Peaks JOIN Rivers ON SUBSTRING(PeakName, LEN(PeakName), 1) = SUBSTRING(RiverName, 1, 1)
ORDER BY Mix;