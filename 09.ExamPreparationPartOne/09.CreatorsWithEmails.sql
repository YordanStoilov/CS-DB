
SELECT 
dt.FullName,
dt.Email,
dt.Rating

FROM

(
    SELECT 
        CONCAT_WS(' ', c.FirstName, c.LastName) AS FullName,
        MAX(b.Rating) AS Rating,
        c.Email
    FROM Creators c
    JOIN CreatorsBoardgames cb
    ON c.Id = cb.CreatorId
    JOIN Boardgames b
    ON cb.BoardgameId = b.Id
    GROUP BY FirstName, LastName, Email
) AS dt
WHERE dt.Email LIKE '%.com'
ORDER BY FullName