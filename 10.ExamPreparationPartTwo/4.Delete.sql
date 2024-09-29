DELETE FROM Invoices
WHERE ClientId = 11

DELETE FROM ProductsClients
WHERE CLientId = 11

DELETE FROM Clients
WHERE NumberVAT LIKE 'IT%'
