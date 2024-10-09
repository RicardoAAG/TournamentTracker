USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spTournaments_Complete]    Script Date: 09/10/2024 02:04:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTournaments_Complete]
	@id int
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE dbo.Tournaments
	SET Active = 0
	WHERE id = @id;
END
GO
