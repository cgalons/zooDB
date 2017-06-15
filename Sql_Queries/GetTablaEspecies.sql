USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[GetTablaEspecies]    Script Date: 15/06/2017 17:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetTablaEspecies]
AS
BEGIN
	SELECT idEspecie
	, idClasificacionTE
	, idTipoAnimalTE
	, nombre
	, nPatas
	, esMascota 
FROM TablaEspecies
END
