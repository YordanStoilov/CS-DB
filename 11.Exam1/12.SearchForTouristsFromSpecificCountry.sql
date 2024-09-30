CREATE OR ALTER PROC usp_SearchByCountry(@country NVARCHAR(50))
AS
BEGIN
    SELECT
        t.Name,
        t.PhoneNumber,
        t.Email,
        COUNT(*)
    FROM
        Bookings b
    JOIN Tourists t ON b.TouristId = t.Id
    JOIN Countries c ON c.Id = t.CountryId
    WHERE c.Name = @country
    GROUP BY
        t.Name,
        t.PhoneNumber,
        t.Email
    ORDER BY t.Name ASC, COUNT(*) DESC
END 