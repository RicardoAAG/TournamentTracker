USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spTournaments_Insert]    Script Date: 09/10/2024 02:04:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTournaments_Insert]
	@TournamentName nvarchar(100),
	@EntryFee money,
	@id int = 0 output
AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO dbo.Tournaments(TournamentName,EntryFee,Active)
	VALUES(@TournamentName,@EntryFee,1);

		SELECT @id = SCOPE_IDENTITY();
END
GO
