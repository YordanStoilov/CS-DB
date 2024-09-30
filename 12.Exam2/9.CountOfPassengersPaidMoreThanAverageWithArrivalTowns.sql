DECLARE @average DECIMAL(18, 2) = 76.99

SELECT
    tw.Name AS TownName,
    COUNT(*) AS PassengersCount
FROM 
    Passengers p
JOIN Tickets t ON p.Id = t.PassengerId
JOIN Trains tr ON tr.ID = t.TrainId
JOIN Towns tw ON tw.Id = tr.ArrivalTownId
WHERE t.Price > @average
GROUP BY tw.Name
ORDER BY tw.Name