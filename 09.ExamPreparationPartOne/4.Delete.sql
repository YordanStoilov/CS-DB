
DELETE FROM CreatorsBoardgames
WHERE BoardgameId IN (1, 16, 31, 47)

-- Ids - 1, 16, 31, 47
DELETE FROM BoardGames
WHERE PublisherId IN (1, 16)

-- Id 1 and 16
DELETE FROM
Publishers WHERE AddressId = 5

-- Id = 5
DELETE FROM Addresses
WHERE Town LIKE 'L%'

