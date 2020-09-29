use $(input);
SET NOCOUNT ON;

CREATE TABLE [dbo].[Interviewer](
	[IdInterviewer] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Seniority] [char](2) NOT NULL,
	[Availability] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsCertified] [bit] NOT NULL,
	[IdCompetency] [tinyint] NOT NULL,
 CONSTRAINT [PK_Interviewer] PRIMARY KEY CLUSTERED 
(
	[IdInterviewer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Interviewer] ADD  CONSTRAINT [DF_Interviewer_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[Interviewer] ADD  CONSTRAINT [DF_Interviewer_IsCertified]  DEFAULT ((0)) FOR [IsCertified]
GO

