SELECT 
    c.Name AS Client,
    MAX(p.Price),
    c.NumberVAT AS [VAT Number]
FROM
    Clients c
JOIN
    ProductsClients pc ON c.Id = pc.ClientId
JOIN
    Products p ON pc.ProductId = p.Id
WHERE c.Name NOT LIKE '%KG'
GROUP BY
    c.Name, c.NumberVAT
ORDER BY MAX(p.Price) DESC