use $(input);
SET NOCOUNT ON;



CREATE TABLE [dbo].[Position](
	[IdPosition] [int] IDENTITY(1,1)NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Project] [varchar](50) NOT NULL,
	[IdCompentecy] [tinyint] NOT NULL,
	[IdSkillPrimary] [smallint] NULL,
	[IdSkillSecondary] [smallint] NULL,
	[IdSkillOptional] [smallint] NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[IdPosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_Position_Competency] FOREIGN KEY([IdCompentecy])
REFERENCES [dbo].[Competency] ([IdCompetency])
GO

ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_Position_Competency]
GO

ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_Position_SkillPrimary] FOREIGN KEY([IdSkillPrimary])
REFERENCES [dbo].[Skill]([IdSkill])
GO

ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_Position_SkillPrimary] 
GO

ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_Position_SkillSecondary] FOREIGN KEY([IdSkillSecondary])
REFERENCES [dbo].[Skill]([IdSkill])
GO

ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_Position_SkillSecondary] 
GO

ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_Position_SkillOptional] FOREIGN KEY([IdSkillOptional])
REFERENCES [dbo].[Skill]([IdSkill])
GO

ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_Position_SkillOptional] 
GO

