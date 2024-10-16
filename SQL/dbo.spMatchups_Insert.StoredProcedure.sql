USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spMatchups_Insert]    Script Date: 09/10/2024 02:04:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spMatchups_Insert] 
	@TournamentId int,
	@MatchupRound int,
	@id int = 0 output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO dbo.Matchups (TournamentId, MatchupRound)
	VALUES(@TournamentId, @MatchupRound)

	SELECT @Id = SCOPE_IDENTITY();
END
GO
