USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarTablaClasificaciones]    Script Date: 15/06/2017 17:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[ActualizarTablaClasificaciones]
     @idClasificacion bigint
    ,@denominacionClasificacion nvarchar(50)
AS
BEGIN
    UPDATE TablaClasificaciones SET
        denominacionClasificacion = @denominacionClasificacion
    WHERE idClasificacion = @idClasificacion
END
