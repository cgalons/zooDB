USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[GetTablaClasificaciones]    Script Date: 15/06/2017 17:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetTablaClasificaciones]
AS
BEGIN
	SELECT idClasificacion
	, denominacionClasificacion 
FROM TablaClasificaciones
END
