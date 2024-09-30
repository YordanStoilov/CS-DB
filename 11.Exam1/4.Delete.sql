
DELETE FROM Bookings
WHERE TouristId IN (6, 16, 25)

DELETE FROM Tourists
WHERE RIGHT([Name], LEN([Name]) - CHARINDEX(' ', [Name])) = 'Smith'