SELECT
    c.Id,
    c.Name AS Client,
    CONCAT_WS(', ', (CONCAT_WS(' ', a.StreetName, a.StreetNumber)), a.City, a.PostCode, co.Name) AS Address
FROM
    Clients AS c JOIN Addresses AS a ON c.AddressId = a.Id
JOIN
    Countries AS co ON a.CountryId = co.Id
WHERE
    c.Id NOT IN
(
    SELECT DISTINCT
        ClientId
    FROM ProductsClients
)
ORDER BY c.Name