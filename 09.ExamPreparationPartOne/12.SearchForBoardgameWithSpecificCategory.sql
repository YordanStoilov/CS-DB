CREATE OR ALTER PROC usp_SearchByCategory(@category NVARCHAR(50))
AS
BEGIN
    SELECT
        b.Name,
        b.YearPublished,
        b.Rating,
        c.Name AS CategoryName,
        p.Name AS PublisherName,
        CONCAT_WS(' ', pr.PlayersMin, 'people') AS MinPlayers,
        CONCAT_WS(' ', pr.PlayersMax, 'people') AS MaxPlayers
    FROM
        Boardgames b
    JOIN
        Categories c
    ON
        b.CategoryId = c.Id
    JOIN
        Publishers p
    ON
        p.Id = b.PublisherId
    JOIN
        PlayersRanges pr
    ON
        pr.Id = b.PlayersRangeId
    WHERE
        c.Name = @category
    ORDER BY
        p.Name, b.YearPublished DESC
END