SELECT TOP 3
    t.Id AS TrainId,
    t.HourOfDeparture,
    ti.Price AS TicketPrice,
    tw.Name AS Destination
FROM
    Tickets ti
JOIN Trains t ON t.Id = ti.TrainId
JOIN Towns tw ON tw.Id = t.ArrivalTownId
WHERE 
    CAST(t.HourOfDeparture AS TIME) BETWEEN '08:00:00' AND '08:59:59'
    AND ti.Price > 50
ORDER BY 
    ti.Price ASC