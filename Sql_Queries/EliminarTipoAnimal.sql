USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[EliminarTipoAnimal]    Script Date: 15/06/2017 17:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[EliminarTipoAnimal]
	@idTipoAnimal bigint

AS
BEGIN
	DELETE FROM TablaTiposAnimal WHERE idTipoAnimal = @idTipoAnimal
END
