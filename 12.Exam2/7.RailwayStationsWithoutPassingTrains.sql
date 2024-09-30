SELECT
    t.Name AS Town,
    rs.Name AS RailwayStation
FROM
    RailwayStations rs 
JOIN    
    Towns t ON t.Id = rs.TownId
WHERE rs.Id NOT IN
(
    SELECT DISTINCT
        RailwayStationId
    FROM 
        TrainsRailwayStations
)

ORDER BY 
    t.Name ASC, rs.Name ASC