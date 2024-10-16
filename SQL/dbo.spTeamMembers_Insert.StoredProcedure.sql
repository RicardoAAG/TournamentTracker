USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spTeamMembers_Insert]    Script Date: 09/10/2024 02:04:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTeamMembers_Insert]
	@TeamId int,
	@PersonId int,
	@id int = 0 output
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.TeamMembers(TeamId,PersonId)
	VALUES(@TeamId,@PersonId)

	SELECT @id = SCOPE_IDENTITY();
END
GO
