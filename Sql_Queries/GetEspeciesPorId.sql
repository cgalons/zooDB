USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[GetEspeciesPorId]    Script Date: 15/06/2017 17:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetEspeciesPorId]
	@idEspecie bigint
AS
BEGIN
SELECT * FROM TablaEspecies
WHERE TablaEspecies.idEspecie = @idEspecie


END

