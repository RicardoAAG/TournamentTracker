USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spPrizes_GetByTournament]    Script Date: 09/10/2024 02:04:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spPrizes_GetByTournament]
	@TournamentId int
AS
BEGIN  
	SET NOCOUNT ON;

	SELECT p.*
	from dbo.Prizes p
	INNER JOIN dbo.TournamentPrizes t on p.id = t.PrizeId
	WHERE t.TournamentId = @TournamentId;

END
GO
