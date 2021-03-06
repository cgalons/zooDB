USE [zooDB]
GO
/****** Object:  Table [dbo].[TablaClasificaciones]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TablaClasificaciones](
	[idClasificacion] [bigint] IDENTITY(1,1) NOT NULL,
	[denominacionClasificacion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TablaClasificaciones] PRIMARY KEY CLUSTERED 
(
	[idClasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TablaEspecies]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TablaEspecies](
	[idEspecie] [bigint] IDENTITY(1,1) NOT NULL,
	[idClasificacionTE] [bigint] NOT NULL,
	[idTipoAnimalTE] [bigint] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[nPatas] [int] NULL,
	[esMascota] [bit] NOT NULL,
 CONSTRAINT [PK_TablaEspecies] PRIMARY KEY CLUSTERED 
(
	[idEspecie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TablaTiposAnimal]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TablaTiposAnimal](
	[idTipoAnimal] [bigint] IDENTITY(1,1) NOT NULL,
	[denominacionTipoAnimal] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TablaTiposAnimal] PRIMARY KEY CLUSTERED 
(
	[idTipoAnimal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[TablaEspecies]  WITH CHECK ADD  CONSTRAINT [FK_TablaEspecies_TablaClasificaciones] FOREIGN KEY([idClasificacionTE])
REFERENCES [dbo].[TablaClasificaciones] ([idClasificacion])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TablaEspecies] CHECK CONSTRAINT [FK_TablaEspecies_TablaClasificaciones]
GO
ALTER TABLE [dbo].[TablaEspecies]  WITH CHECK ADD  CONSTRAINT [FK_TablaEspecies_TablaTiposAnimal] FOREIGN KEY([idTipoAnimalTE])
REFERENCES [dbo].[TablaTiposAnimal] ([idTipoAnimal])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TablaEspecies] CHECK CONSTRAINT [FK_TablaEspecies_TablaTiposAnimal]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarTablaClasificaciones]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarTablaClasificaciones]
     @idClasificacion bigint
    ,@denominacionClasificacion nvarchar(50)
AS
BEGIN
    UPDATE TablaClasificaciones SET
        denominacionClasificacion = @denominacionClasificacion
    WHERE idClasificacion = @idClasificacion
END

GO
/****** Object:  StoredProcedure [dbo].[ActualizarTablaEspecies]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarTablaEspecies]
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

GO
/****** Object:  StoredProcedure [dbo].[ActualizarTablaTiposAnimal]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarTablaTiposAnimal]
     @idTipoAnimal bigint
    ,@denominacionTipoAnimal nvarchar(50)
AS
BEGIN
    UPDATE TablaTiposAnimal SET
        denominacionTipoAnimal = @denominacionTipoAnimal
    WHERE idTipoAnimal = @idTipoAnimal 
END

GO
/****** Object:  StoredProcedure [dbo].[AgregarClasificacion]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarClasificacion]
	@denominacionClasificacion nvarchar(50)

AS
BEGIN


	INSERT INTO TablaClasificaciones (denominacionClasificacion) VALUES (@denominacionClasificacion)
END

GO
/****** Object:  StoredProcedure [dbo].[AgregarEspecies]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarEspecies]
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
GO
/****** Object:  StoredProcedure [dbo].[AgregarTipoAnimal]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarTipoAnimal]
	@denominacionTipoAnimal nvarchar(50)

AS
BEGIN


	INSERT INTO TablaTiposAnimal (denominacionTipoAnimal) VALUES (@denominacionTipoAnimal)
END

GO
/****** Object:  StoredProcedure [dbo].[EliminarClasificacion]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarClasificacion]
	@idClasificacion bigint

AS
BEGIN
	DELETE FROM TablaClasificaciones WHERE idClasificacion = @idClasificacion
END

GO
/****** Object:  StoredProcedure [dbo].[EliminarEspecie]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarEspecie]
	@idEspecie bigint

AS
BEGIN
	DELETE FROM TablaEspecies WHERE idEspecie = @idEspecie
END

GO
/****** Object:  StoredProcedure [dbo].[EliminarTipoAnimal]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarTipoAnimal]
	@idTipoAnimal bigint

AS
BEGIN
	DELETE FROM TablaTiposAnimal WHERE idTipoAnimal = @idTipoAnimal
END

GO
/****** Object:  StoredProcedure [dbo].[GetClasificacionesPorId]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetClasificacionesPorId]
	@idClasificacion bigint
AS
BEGIN
SELECT * FROM TablaClasificaciones
WHERE TablaClasificaciones.idClasificacion = @idClasificacion


END


GO
/****** Object:  StoredProcedure [dbo].[GetEspeciePorClasificacion]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEspeciePorClasificacion]
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

GO
/****** Object:  StoredProcedure [dbo].[GetEspeciePorTipo]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEspeciePorTipo]
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
GO
/****** Object:  StoredProcedure [dbo].[GetEspeciesPorId]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEspeciesPorId]
	@idEspecie bigint
AS
BEGIN
SELECT * FROM TablaEspecies
WHERE TablaEspecies.idEspecie = @idEspecie


END


GO
/****** Object:  StoredProcedure [dbo].[GetTablaClasificaciones]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTablaClasificaciones]
AS
BEGIN
	SELECT idClasificacion
	, denominacionClasificacion 
FROM TablaClasificaciones
END

GO
/****** Object:  StoredProcedure [dbo].[GetTablaEspecies]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTablaEspecies]
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

GO
/****** Object:  StoredProcedure [dbo].[GetTablaTiposAnimal]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTablaTiposAnimal]
AS
BEGIN
	SELECT idTipoAnimal
	, denominacionTipoAnimal 
FROM TablaTiposAnimal
END
GO
/****** Object:  StoredProcedure [dbo].[GetTipoAnimalPorId]    Script Date: 15/06/2017 18:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTipoAnimalPorId]
	@idTipoAnimal bigint
AS
BEGIN
SELECT * FROM TablaTiposAnimal
WHERE TablaTiposAnimal.idTipoAnimal = @idTipoAnimal


END


GO
