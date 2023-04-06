USE [master]
GO

CREATE PROCEDURE [dbo].[sp_GetUserDatabases]
	@ShowMe bit =0

AS
BEGIN
	
	SET NOCOUNT ON;

	IF (@ShowMe=1)
	begin
		SELECT [name]
    FROM sys.databases 
	WHERE name NOT IN ('master', 'tempdb', 'model', 'msdb')
   	end
	else IF (@ShowMe=0)
	begin
		print 'no'
		
	end

END

--EXEC [dbo].[sp_GetUserDatabases]