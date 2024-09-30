SELECT 
    TOP 7
    i.Number AS [Number],
    i.Amount AS Amount,
    c.Name AS Client
FROM 
    Invoices i
JOIN
    Clients c ON i.ClientId = c.Id 
WHERE
    (i.IssueDate < '2023-01-01' AND i.Currency = 'EUR') OR (i.Amount > 500
    AND c.NumberVAT LIKE 'DE%')
ORDER BY
    i.Number,
    i.Amount DESC
