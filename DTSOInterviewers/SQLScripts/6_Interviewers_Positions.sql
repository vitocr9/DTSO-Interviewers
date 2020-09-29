use $(input);
SET NOCOUNT ON;


CREATE TABLE [dbo].[Interviewers_Positions](
	[IdInterviewer] [smallint] NOT NULL,
	[IdPosition] [int] NOT NULL,
 CONSTRAINT [PK_Interviewers_Positions] PRIMARY KEY CLUSTERED 
(
	[IdInterviewer] ASC,
	[IdPosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

