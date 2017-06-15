USE [zooDB]
GO

/****** Object:  Table [dbo].[TablaTiposAnimal]    Script Date: 15/06/2017 18:46:19 ******/
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


