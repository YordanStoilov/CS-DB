CREATE OR ALTER FUNCTION udf_CreatorWithBoardgames(@name VARCHAR(50))
RETURNS INT
AS
BEGIN
    RETURN
    (
            SELECT 
            COUNT(*)
        FROM
            Creators c
        JOIN
            CreatorsBoardgames cb
        ON
            c.Id = cb.CreatorId
        JOIN
            Boardgames b
        ON
            b.Id = cb.BoardgameId
        WHERE c.FirstName = @name
    )
END
