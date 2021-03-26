CREATE PROC spGetFullName
AS
BEGIN
	SELECT  [FirstName],
			COALESCE([MiddleName],SUBSTRING([FirstName],1,1)) AS [Middle Initial],
			[LastName]
	FROM    [ADVENTUREWORKS].[dbo].[Person_Temporal_History]
END
GO

EXEC spGetFullName

DROP PROC spGetFullName
GO

CREATE PROC spGetMaleActors
@Title NCHAR(20),
@Suffix NVARCHAR(20)
AS
BEGIN
	SELECT	concat([Suffix],'.',[FirstName],[AdditionalContactInfo]) AS [Actor's Information]
	FROM    [ADVENTUREWORKS].[dbo].[Person]
	WHERE   [Title]=@Title AND
			[Suffix]=@Suffix
END

EXEC spGetMaleActors 'Actor','Mr'