CREATE OR ALTER FUNCTION udf_RoomsWithTourists(@name NVARCHAR(50))
RETURNS INT
AS
BEGIN
    DECLARE @numberOfRooms INT;
    SET @numberOfRooms = 
    (
        SELECT
            SUM(b.AdultsCount + b.ChildrenCount)
        FROM
            Bookings b
        JOIN
            Rooms r ON b.RoomId = r.Id
        WHERE
            r.Type = @name
    )
    
    RETURN @numberOfRooms
END 