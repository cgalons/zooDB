USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[GetEspeciePorClasificacion]    Script Date: 15/06/2017 17:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetEspeciePorClasificacion]
AS
BEGIN
SELECT 
      TablaClasificaciones.denominacionClasificacion AS DenominacionClasificacion
    , TablaTiposAnimal.denominacionTipoAnimal AS denominacionTipoAnimal
    ---, TablaEspecies.idClasificacionTE
    ---, TablaESpecies.idTipoAnimalTE
    , TablaEspecies.idEspecie
	, TablaEspecies.nombre
	, TablaEspecies.nPatas
	, TablaEspecies.esMascota
   
FROM TablaClasificaciones
    INNER JOIN TablaEspecies ON TablaClasificaciones.idClasificacion = TablaEspecies.idClasificacionTE
    INNER JOIN TablaTiposAnimal ON TablaEspecies.idTipoAnimalTE = TablaTiposAnimal.idTipoAnimal
GROUP BY 
      TablaClasificaciones.denominacionClasificacion 
    , TablaTiposAnimal.denominacionTipoAnimal 
    ---, TablaEspecies.idClasificacionTE
    ---, TablaESpecies.idTipoAnimalTE
    , TablaEspecies.idEspecie
	, TablaEspecies.nombre
	, TablaEspecies.nPatas
	, TablaEspecies.esMascota
ORDER BY TablaClasificaciones.denominacionClasificacion

END
