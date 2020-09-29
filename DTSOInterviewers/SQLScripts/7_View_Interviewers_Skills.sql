
CREATE VIEW VIEW_INTERVIEWERS_SKILLS AS

	SELECT I.[Name], I.LastName, I.Email, S.[Description] as Skill
	FROM Interviewers_Skills iis 
	INNER JOIN Interviewer I ON I.IdInterviewer = IIS.IdInterviewer
	INNER JOIN Skill S ON S.IdSkill = IIS.IdSkill


	