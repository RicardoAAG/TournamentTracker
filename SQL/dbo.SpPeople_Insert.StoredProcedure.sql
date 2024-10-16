USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[SpPeople_Insert]    Script Date: 09/10/2024 02:04:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SpPeople_Insert]
	@FirstName nvarchar(100),
	@LastName nvarchar(100),
	@EmailAdress nvarchar(200),
	@CellphoneNumber varchar(20),
	@id int = 0 output
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.People(FirstName,LastName,EmailAdress, CellphoneNumber)
	VALUES(@FirstName,@LastName,@EmailAdress,@CellphoneNumber)

	SELECT @id=SCOPE_IDENTITY()
	;
END
GO
