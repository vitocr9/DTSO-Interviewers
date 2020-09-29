use $(input);
SET NOCOUNT ON;

DECLARE @Rows INT
DECLARE @RowsToInsert INT
DECLARE @IdSkill INT
DECLARE @IdInterviewer INT
DECLARE @RANDOMIdSkill INT
DECLARE @RANDOMIdInterviewer INT

SELECT @IdSkill = COUNT(*) FROM Skill
SELECT @IdInterviewer = COUNT(*) FROM Skill
SET  @RowsToInsert = 500
SET  @Rows = 0

WHILE @Rows < @RowsToInsert
BEGIN
	SELECT @RANDOMIdSkill = CEILING(rand()*(@IdSkill));
	SELECT @RANDOMIdInterviewer = CEILING(rand()*(@IdInterviewer));
	INSERT INTO Interviewers_Skills VALUES (@RANDOMIdInterviewer,@RANDOMIdSkill)
	SET @Rows = @Rows +1
END


