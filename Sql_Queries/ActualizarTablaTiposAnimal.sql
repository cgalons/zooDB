USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarTablaTiposAnimal]    Script Date: 15/06/2017 17:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[ActualizarTablaTiposAnimal]
     @idTipoAnimal bigint
    ,@denominacionTipoAnimal nvarchar(50)
AS
BEGIN
    UPDATE TablaTiposAnimal SET
        denominacionTipoAnimal = @denominacionTipoAnimal
    WHERE idTipoAnimal = @idTipoAnimal 
END
