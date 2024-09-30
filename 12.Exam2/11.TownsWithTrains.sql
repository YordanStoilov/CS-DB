CREATE OR ALTER FUNCTION udf_TownsWithTrains(@name NVARCHAR(50))
RETURNS INT
AS
BEGIN
    DECLARE @result INT;
    SET @result = 
    (SELECT
        COUNT(*)
    FROM
        Trains t
    JOIN Towns tw ON t.DepartureTownId = tw.Id
    OR t.ArrivalTownId = tw.Id
    WHERE tw.Name = @name)

    RETURN @result
END