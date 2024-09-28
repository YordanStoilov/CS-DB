SELECT c.Id, CONCAT_WS(' ', c.FirstName, c.LastName) AS CreatorName, c.Email
FROM Creators c
WHERE c.Id NOT IN 
(
    SELECT DISTINCT c.Id
    FROM Creators c
    JOIN CreatorsBoardgames cb
    ON c.Id = cb.CreatorId
    JOIN Boardgames b
    ON cb.BoardgameId = b.Id
)