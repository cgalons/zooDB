USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[GetTipoAnimalPorId]    Script Date: 15/06/2017 17:47:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetTipoAnimalPorId]
	@idTipoAnimal bigint
AS
BEGIN
SELECT * FROM TablaTiposAnimal
WHERE TablaTiposAnimal.idTipoAnimal = @idTipoAnimal


END

