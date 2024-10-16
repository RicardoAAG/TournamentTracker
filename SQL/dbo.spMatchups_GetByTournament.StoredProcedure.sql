USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spMatchups_GetByTournament]    Script Date: 09/10/2024 02:04:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spMatchups_GetByTournament]
	@TournamentId int
AS
BEGIN  
	SET NOCOUNT ON;

	SELECT m.*
	from dbo.Matchups m
	WHERE m.TournamentId = @TournamentId
	ORDER BY MatchupRound;

END
GO
