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
    SELECT  Nombre2
    FROM    dbo.Employees
    WHERE   Nombre2 = @ID
    /*FOR     JSON PATH*/
    /*This is a test*/
    /*comment 2*/
GO
EXECUTE dbo.getEmployee 1
GO