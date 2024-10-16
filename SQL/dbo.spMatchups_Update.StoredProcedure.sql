USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spMatchups_Update]    Script Date: 09/10/2024 02:04:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spMatchups_Update]
	@id int,
	@WinnerId int
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE dbo.Matchups
	SET WinnerId = @WinnerId
	WHERE id = @id;
END
GO
