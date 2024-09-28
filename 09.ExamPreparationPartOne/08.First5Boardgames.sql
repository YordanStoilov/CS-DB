SELECT TOP 5
        b.Name,
        b.Rating,
        c.Name AS CategoryName
FROM Boardgames b
JOIN Categories c
ON b.CategoryId = c.Id
JOIN PlayersRanges pr
ON b.PlayersRangeId = pr.Id
WHERE (LEN(b.Name) - LEN(REPLACE(b.Name, 'a', '')) > 0
AND b.Rating > 7) OR (b.Rating > 7.5 AND pr.PlayersMin = 2 AND pr.PlayersMax = 5)
ORDER BY b.Name, b.Rating DESC