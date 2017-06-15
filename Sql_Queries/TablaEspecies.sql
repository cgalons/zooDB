USE [zooDB]
GO

/****** Object:  Table [dbo].[TablaEspecies]    Script Date: 15/06/2017 18:45:44 ******/
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


