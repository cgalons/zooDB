USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[AgregarTipoAnimal]    Script Date: 15/06/2017 17:45:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[AgregarTipoAnimal]
	@denominacionTipoAnimal nvarchar(50)

AS
BEGIN


	INSERT INTO TablaTiposAnimal (denominacionTipoAnimal) VALUES (@denominacionTipoAnimal)
END
