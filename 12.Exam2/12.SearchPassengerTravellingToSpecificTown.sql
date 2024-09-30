CREATE OR ALTER PROC usp_SearchByTown(@townName NVARCHAR(50))
AS
BEGIN
    SELECT
        p.Name AS PassengerName,
        ti.DateOfDeparture,
        tr.HourOfDeparture
    FROM
        Towns t
    JOIN Trains tr ON tr.ArrivalTownId = t.Id
    JOIN Tickets ti ON ti.TrainId = tr.Id
    JOIN Passengers p ON p.Id = ti.PassengerId
    WHERE t.Name = @townName
    ORDER BY ti.DateOfDeparture DESC, p.Name ASC

END