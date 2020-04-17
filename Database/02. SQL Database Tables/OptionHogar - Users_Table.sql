SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[USER_ID] [int] IDENTITY(1,1) NOT NULL,
	[PERS_ID] [int] NOT NULL,
	[USER_Email] [varchar](25) NOT NULL,
	[USER_Password] [varchar](200) NOT NULL,
	[USER_Admin] [bit] NOT NULL,
	[USER_Status] [char](1) NOT NULL,
	[AUDI_UserCrea] [varchar](20) NOT NULL,
	[AUDI_FechCrea] [datetime] NOT NULL,
	[AUDI_UserModi] [varchar](20) NULL,
	[AUDI_FechModi] [datetime] NULL,
 CONSTRAINT [Users_PK] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [Users_Persons_FK] FOREIGN KEY([PERS_ID])
REFERENCES [dbo].[Persons] ([PERS_ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [Users_Persons_FK]