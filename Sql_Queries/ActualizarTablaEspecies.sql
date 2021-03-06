USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarTablaEspecies]    Script Date: 15/06/2017 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[ActualizarTablaEspecies]
     @idEspecie bigint
	,@idClasificacionTE bigint
	,@idTipoAnimalTE bigint
    ,@nombre nvarchar(50)
	,@nPatas int
	,@esMascota bit
AS
BEGIN
    UPDATE TablaEspecies SET
	    idClasificacionTE = @idClasificacionTE
	  , idTipoAnimalTE = @idTipoAnimalTE
      , nombre = @nombre
	  , nPatas = @nPatas
	  , esMascota = @esMascota
    WHERE idEspecie = @idEspecie
END
