use $(input);
SET NOCOUNT ON;

CREATE TABLE [dbo].[Competency](
	[IdCompetency] [tinyint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](25) NOT NULL,
	[Stakeholder] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Competency] PRIMARY KEY CLUSTERED 
(
	[IdCompetency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

