SELECT 
    p.Name AS PassengerName,
    t.Price AS TicketPrice,
    t.DateOfDeparture AS DateOfDeparture,
    t.TrainId AS TrainID
FROM 
    Tickets t
JOIN Passengers p ON t.PassengerId = p.Id
ORDER BY t.Price DESC, p.Name ASC