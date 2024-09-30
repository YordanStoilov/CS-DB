CREATE OR ALTER FUNCTION udf_ProductWithClients(@name NVARCHAR(30))
RETURNS INT
AS
BEGIN
    DECLARE @count INT;
    SET @count = 
    (SELECT
        COUNT(ClientId)
    FROM 
        ProductsClients pc
    JOIN
        Products p ON p.Id = pc.ProductId
    WHERE
        p.Name = @name)
    RETURN @count
END