
SELECT
    h.Id,
    h.Name
FROM
    Hotels h
JOIN    
    HotelsRooms hr ON h.Id = hr.HotelId
JOIN
    Rooms r ON r.ID = hr.RoomId
JOIN
    Bookings b ON b.HotelId = h.Id
GROUP BY
    h.Id, h.Name, r.Type
HAVING r.Type = 'VIP Apartment' --The problem is that we are filtering by VIP Apartment before ordering
ORDER BY COUNT(b.HotelId) DESC
