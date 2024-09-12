-- Find all users with their IP addresses, sorted by username alphabetically. 
-- Display only the rows which IP address matches the pattern: "***.1^.^.***". 


SELECT 
    [Username]
    ,IpAddress as [IP Address]
FROM Users
WHERE IpAddress LIKE '___.1%.%.___'
ORDER BY Username;