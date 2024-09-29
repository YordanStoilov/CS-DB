SELECT
    p.Id,
    p.Name [Name],
    p.Price Price,
    c.Name CategoryName
FROM 
    Products p JOIN Categories c ON p.CategoryId = c.Id
WHERE
    c.Name IN ('ADR', 'Others')
ORDER BY
    p.Price DESC