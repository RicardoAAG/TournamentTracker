USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spTournaments_GetAll]    Script Date: 09/10/2024 02:04:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTournaments_GetAll]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT *
	FROM dbo.Tournaments
	WHERE Active=1;
END
GO
