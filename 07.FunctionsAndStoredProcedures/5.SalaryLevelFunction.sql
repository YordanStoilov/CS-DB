-- Create a function ufn_GetSalaryLevel(@salary DECIMAL(18,4)) that receives 
-- salary of an employee and returns the level of the salary.
-- •	If salary is < 30000, return "Low"
-- •	If salary is between 30000 and 50000 (inclusive), return "Average"
-- •	If salary is > 50000, return "High"

CREATE OR ALTER FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS VARCHAR(10)
AS
    BEGIN
        DECLARE @Result VARCHAR(10)
            IF @salary < 30000
                SET @Result = 'Low'
            ELSE IF  @salary BETWEEN 30000 AND 50000
                SET @Result = 'Average'
            ELSE SET @Result = 'High'
        RETURN @Result
    END
GO

SELECT FirstName, LastName, dbo.ufn_GetSalaryLevel(Salary) AS [Salary Level]
FROM Employees