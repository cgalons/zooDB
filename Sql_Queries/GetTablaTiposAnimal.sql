USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[GetTablaTiposAnimal]    Script Date: 15/06/2017 17:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetTablaTiposAnimal]
AS
BEGIN
	SELECT idTipoAnimal
	, denominacionTipoAnimal 
FROM TablaTiposAnimal
END