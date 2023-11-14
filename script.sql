--
--Script to Create Stored Procedure
--
CREATE PROCEDURE dbo.uspCalculateTime
	-- Add the parameters for the stored procedure here
	@distance float, 
	@velocity float
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

       -- Insert statements for procedure here
	IF (@velocity <> 0.00)
		SELECT @distance / @velocity;
	ELSE
		SELECT 0.00;
END
GO

--
-- Script to Execute Stored Procedure
--
exec dbo.uspCalculateTime 120.0, 40.0