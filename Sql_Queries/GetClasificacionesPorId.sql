USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[GetClasificacionesPorId]    Script Date: 15/06/2017 17:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetClasificacionesPorId]
	@idClasificacion bigint
AS
BEGIN
SELECT * FROM TablaClasificaciones
WHERE TablaClasificaciones.idClasificacion = @idClasificacion


END

