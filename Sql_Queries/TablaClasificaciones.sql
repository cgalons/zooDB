USE [zooDB]
GO

/****** Object:  Table [dbo].[TablaClasificaciones]    Script Date: 15/06/2017 18:44:28 ******/
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


