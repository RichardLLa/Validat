SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[LOG_ID] [int] IDENTITY(1,1) NOT NULL,
	[LOG_Date] [date] NOT NULL,
	[TYPE_TabAUD] [varchar](3) NOT NULL,
	[TYPE_CodAUD] [varchar](3) NOT NULL,
	[LOG_Object] [varchar](25) NOT NULL,
	[LOG_Text] [text] NOT NULL,
 CONSTRAINT [Logs_PK] PRIMARY KEY CLUSTERED 
(
	[LOG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [Logs_TypesAUD_FK] FOREIGN KEY([TYPE_TabAUD], [TYPE_CodAUD])
REFERENCES [dbo].[Types] ([TYPE_CodTable], [TYPE_CodType])
GO
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [Logs_TypesAUD_FK]