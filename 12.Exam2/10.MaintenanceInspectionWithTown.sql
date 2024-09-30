SELECT 
    t.Id AS TrainID,
    tw.Name AS DepartureTown,
    mr.Details
FROM
    MaintenanceRecords mr
JOIN Trains t ON t.Id = mr.TrainId
JOIN Towns tw ON tw.Id = t.DepartureTownId
WHERE mr.Details LIKE '%inspection%'
ORDER BY t.Id