SELECT
    h.Name AS HotelName,
    SUM(r.Price * DATEDIFF(DAY, b.ArrivalDate, b.DepartureDate)) AS HotelRevenue
FROM
    Bookings b 
JOIN Rooms r ON b.RoomId = r.Id
JOIN Hotels h ON h.Id = b.HotelId
GROUP BY
    h.Name
ORDER BY
    SUM(r.Price * DATEDIFF(DAY, b.ArrivalDate, b.DepartureDate)) DESC