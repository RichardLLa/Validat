SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionKeys](
	[SESS_ID] [int] NOT NULL,
	[SESS_Date] [date] NOT NULL,
	[SESS_PrivateKeyXML] [varchar](100) NOT NULL,
	[SESS_PublicKeyXML] [varchar](100) NOT NULL,
	[SESS_PrivateKeyPEM] [varchar](100) NOT NULL,
	[SESS_PublicKeyPEM] [varchar](100) NOT NULL,
	[AUDI_UserCrea] [varchar](20) NOT NULL,
	[AUDI_FechCrea] [datetime] NOT NULL,
	[AUDI_UserModi] [varchar](20) NULL,
	[AUDI_FechModi] [datetime] NULL,
 CONSTRAINT [PK_SessionKeys_1] PRIMARY KEY CLUSTERED 
(
	[SESS_ID] ASC,
	[SESS_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]