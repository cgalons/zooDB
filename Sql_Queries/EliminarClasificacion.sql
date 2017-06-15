USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[EliminarClasificacion]    Script Date: 15/06/2017 17:46:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[EliminarClasificacion]
	@idClasificacion bigint

AS
BEGIN
	DELETE FROM TablaClasificaciones WHERE idClasificacion = @idClasificacion
END
