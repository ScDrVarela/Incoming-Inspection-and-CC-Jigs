-- Create a new stored procedure called 'getEmployee' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'getEmployee'
    /*AND ROUTINE_TYPE = N'PROCEDURE'*/
)
DROP PROCEDURE dbo.getEmployee
GO
CREATE PROCEDURE dbo.getEmployee
    @ID nchar
AS
    SELECT  NameI
    FROM    dbo.Employees
    WHERE   NameI = @ID
    /*FOR     JSON PATH*/
GO
EXECUTE dbo.getEmployee 1
GO