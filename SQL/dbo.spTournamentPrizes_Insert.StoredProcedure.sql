USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spTournamentPrizes_Insert]    Script Date: 09/10/2024 02:04:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTournamentPrizes_Insert]
	@TournamentId int,
	@PrizeId int,
	@id int = 0 output
AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO dbo.TournamentPrizes(TournamentId,PrizeId)
	VALUES(@TournamentId,@PrizeId);

	SELECT @id = SCOPE_IDENTITY();
END
GO
