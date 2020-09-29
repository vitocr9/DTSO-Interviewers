use $(input);
SET NOCOUNT ON;


CREATE TABLE [dbo].[Interviewers_Skills](
	[IdInterviewer] [smallint] NOT NULL,
	[IdSkill] [smallint] NOT NULL,
 CONSTRAINT [PK_Interviewers_Skills] PRIMARY KEY CLUSTERED 
(
	[IdInterviewer] ASC,
	[IdSkill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

