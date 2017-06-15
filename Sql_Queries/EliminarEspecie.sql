USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[EliminarEspecie]    Script Date: 15/06/2017 17:46:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[EliminarEspecie]
	@idEspecie bigint

AS
BEGIN
	DELETE FROM TablaEspecies WHERE idEspecie = @idEspecie
END
