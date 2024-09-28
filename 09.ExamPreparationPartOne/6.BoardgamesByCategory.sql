SELECT 
    b.Id,
    b.Name,
    b.YearPublished,
    c.Name
FROM 
    Boardgames b
JOIN
    Categories c
ON
    b.CategoryId = c.Id
WHERE
    c.Name IN ('Strategy Games', 'Wargames')
ORDER BY b.YearPublished DESC