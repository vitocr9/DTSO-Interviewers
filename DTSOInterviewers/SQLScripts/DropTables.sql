use $(input);
SET NOCOUNT ON;
-----------DELETING VIEWS----------------------
IF EXISTS (SELECT 1 FROM SYS.Views WHERE [NAME]='VIEW_INTERVIEWERS_SKILLS')
	BEGIN
		DROP VIEW [dbo].[VIEW_INTERVIEWERS_SKILLS]
		PRINT 'View VIEW_INTERVIEWERS_SKILLS  Deleted'
	END
ELSE
	BEGIN 
		PRINT 'View VIEW_INTERVIEWERS_SKILLS  cannot be found'
	END


-----------DELETING TABLES----------------------

IF EXISTS (SELECT 1 FROM SYS.tables WHERE [NAME]='Interviewers_Positions')
	BEGIN
		DROP TABLE [dbo].[Interviewers_Positions]
		PRINT 'Table Interviewers_Positions Deleted'
	END 
ELSE
	BEGIN 
		PRINT 'Table Interviewers_Positions cannot be found'
	END

IF EXISTS (SELECT 1 FROM SYS.tables WHERE [NAME]='Interviewers_Skills')
	BEGIN
		DROP TABLE [dbo].[Interviewers_Skills]
		PRINT 'Table Interviewers_Skills Deleted'
	END
ELSE
	BEGIN 
		PRINT 'Table Interviewers_Skills cannot be found'
	END

IF EXISTS (SELECT 1 FROM SYS.tables WHERE [NAME]='Interviewer')
	BEGIN
		DROP TABLE [dbo].[Interviewer]
		PRINT 'Table Interviewer Deleted'
	END
ELSE
	BEGIN 
		PRINT 'Table Interviewer cannot be found'
	END

IF EXISTS (SELECT 1 FROM SYS.tables WHERE [NAME]='Position')
	BEGIN
		DROP TABLE [dbo].[Position]
		PRINT 'Table Position Deleted'
	END
ELSE
	BEGIN 
		PRINT 'Table Position cannot be found'
	END

IF EXISTS (SELECT 1 FROM SYS.tables WHERE [NAME]='Skill')
	BEGIN
		DROP TABLE [dbo].[Skill]
		PRINT 'Table Skill Deleted'
	END
ELSE
	BEGIN 
		PRINT 'Table Skill cannot be found'
	END
IF EXISTS (SELECT 1 FROM SYS.tables WHERE [NAME]='Competency')
	BEGIN
		DROP TABLE [dbo].[Competency]
		PRINT 'Table Competency Deleted'
	END
ELSE
	BEGIN 
		PRINT 'Table Competency cannot be found'
	END


