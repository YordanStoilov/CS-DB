SELECT
    c.Name AS Client,
    FLOOR(AVG(p.Price)) AS [Average Price]
FROM
    Clients c
INNER JOIN
    ProductsClients pc ON c.Id = pc.ClientId
JOIN
    Products p ON pc.ProductId = p.Id
JOIN
    Vendors v ON v.Id = p.VendorId
WHERE
    v.NumberVAT LIKE '%FR%'
GROUP BY    
    c.Name, c.NumberVAT
ORDER BY AVG(p.Price) ASC, c.Name DESC
