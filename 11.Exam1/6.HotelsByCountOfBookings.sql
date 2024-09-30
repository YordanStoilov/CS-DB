
SELECT
    h.Id,
    h.Name
FROM
    Hotels h
JOIN    
    HotelsRooms hr ON h.Id = hr.HotelId AND hr.RoomId = 8
JOIN
    Rooms r ON r.ID = hr.RoomId
JOIN
    Bookings b ON b.HotelId = h.Id
GROUP BY
    h.Id, h.Name, r.Type
ORDER BY
    COUNT(b.HotelId) DESC

-- Vip apartment Id = 8