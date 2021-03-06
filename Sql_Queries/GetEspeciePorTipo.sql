USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[GetEspeciePorTipo]    Script Date: 15/06/2017 17:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetEspeciePorTipo]
AS
BEGIN
SELECT 
      TablaTiposAnimal.denominacionTipoAnimal AS denominacionTipoAnimal
	, TablaClasificaciones.denominacionClasificacion AS DenominacionClasificacion
    , TablaEspecies.idEspecie
	, TablaEspecies.nombre
	, TablaEspecies.nPatas
	, TablaEspecies.esMascota
   
FROM TablaTiposAnimal
    INNER JOIN TablaEspecies ON TablaTiposAnimal.idTipoAnimal = TablaEspecies.idTipoAnimalTE
    INNER JOIN TablaClasificaciones ON TablaEspecies.idClasificacionTE = TablaClasificaciones.idClasificacion
GROUP BY 
      TablaTiposAnimal.denominacionTipoAnimal
	, TablaClasificaciones.denominacionClasificacion
    , TablaEspecies.idEspecie
	, TablaEspecies.nombre
	, TablaEspecies.nPatas
	, TablaEspecies.esMascota
ORDER BY TablaTiposAnimal.denominacionTipoAnimal

END