-- Display all peaks for "Rila" mountain. Include:
-- •	MountainRange
-- •	PeakName
-- •	Elevation
-- Peaks should be sorted by elevation descending.

SELECT MountainRange
    ,PeakName
    ,Elevation
FROM Mountains JOIN Peaks ON Mountains.Id = Peaks.MountainId
WHERE Mountains.Id = 17
ORDER BY Peaks.Elevation DESC;