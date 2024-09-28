SELECT
    c.LastName,
    CEILING(AVG(b.Rating)),
    p.Name
FROM 
    Creators c
JOIN
    CreatorsBoardgames cb
ON
    c.Id = cb.CreatorId
JOIN
    Boardgames b
ON
    cb.BoardgameId = b.Id
JOIN
    Publishers p
ON
    b.PublisherId = p.Id
WHERE
    p.Name = 'Stonemaier Games'
GROUP BY 
    c.LastName, p.Name
ORDER BY 
    AVG(b.Rating) DESC
