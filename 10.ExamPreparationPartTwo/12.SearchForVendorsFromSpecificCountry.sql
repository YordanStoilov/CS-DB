CREATE OR ALTER PROC usp_SearchByCountry(@country NVARCHAR(30))
AS
BEGIN
    SELECT 
        v.Name AS Vendor,
        v.NumberVAT AS VAT,
        CONCAT_WS(' ', a.StreetName, a.StreetNumber) AS [Street Info],
        CONCAT_WS(' ', a.City, a.PostCode) AS [City Info]
    FROM
        Vendors v
    JOIN
        Addresses a ON v.AddressId = a.Id
    JOIN
        Countries c ON c.Id = a.CountryId
    WHERE
        c.Name = @country
    ORDER BY 
        v.Name ASC, a.City ASC
END