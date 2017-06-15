USE [zooDB]
GO
/****** Object:  StoredProcedure [dbo].[AgregarClasificacion]    Script Date: 15/06/2017 17:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[AgregarClasificacion]
	@denominacionClasificacion nvarchar(50)

AS
BEGIN


	INSERT INTO TablaClasificaciones (denominacionClasificacion) VALUES (@denominacionClasificacion)
END
