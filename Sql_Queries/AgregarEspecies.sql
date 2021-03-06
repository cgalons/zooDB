USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[AgregarEspecies]    Script Date: 15/06/2017 17:45:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[AgregarEspecies]
	@idClasificacionTE bigint
	, @idTipoAnimalTE bigint
	, @nombre nvarchar(50)
	, @nPatas int
	, @esMascota bit

AS
BEGIN


	INSERT INTO TablaEspecies(idClasificacionTE, idTipoAnimalTE, nombre, nPatas, esMascota) 
	VALUES (@idClasificacionTE, @idTipoAnimalTE, @nombre, @nPatas, @esMascota)

END