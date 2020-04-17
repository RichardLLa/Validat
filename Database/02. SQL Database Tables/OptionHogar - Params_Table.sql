SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Params](
	[PARA_ID] [int] IDENTITY(1,1) NOT NULL,
	[PARA_Key] [varchar](50) NOT NULL,
	[PARA_Value] [varchar](100) NOT NULL,
	[PARA_Description] [varchar](100) NOT NULL,
	[AUDI_UserCrea] [varchar](20) NOT NULL,
	[AUDI_FechCrea] [datetime] NOT NULL,
	[AUDI_UserModi] [varchar](20) NULL,
	[AUDI_FechModi] [datetime] NULL,
 CONSTRAINT [Params_PK] PRIMARY KEY CLUSTERED 
(
	[PARA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]