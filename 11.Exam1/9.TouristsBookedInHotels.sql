SELECT
    h.Name AS HotelName,
    r.Price AS RoomPrice
FROM
    Tourists t
JOIN
    Bookings b ON b.TouristId = t.Id
JOIN
    Hotels h ON h.Id = b.HotelId
JOIN
    Rooms r ON r.Id = b.RoomId
WHERE
    t.Name NOT LIKE '%EZ'
ORDER BY 
    r.Price DESC