SELECT * from [ADVENTUREWORKS].[dbo].[Person]

SELECT * from [ADVENTUREWORKS].[dbo].[StateProvince]

SELECT 
	[BusinessEntityId],
	[FirstName],
	[MiddleName],
	[LastName],
	[PersonType],
	[NameStyle],
	[Title],
	[Suffix],
	[EmailPromotion],
	[Demographics],
	[RowGuid],
	[ModifiedDate]

FROM [ADVENTUREWORKS].[dbo].[Person]

SELECT		[BusinessEntityId] , [FirstName] 
FROM		[ADVENTUREWORKS].[dbo].[Person]
WHERE		[Title]='Poet'

SELECT		COUNT(*)[FirstName]
FROM		[ADVENTUREWORKS].[dbo].[Person]
WHERE		[Title]='Poet'


SELECT		[BusinessEntityId] , [FirstName] 
FROM		[ADVENTUREWORKS].[dbo].[Person]
WHERE		[Title]<>'Poet'

SELECT		COUNT(*)[FirstName]
FROM		[ADVENTUREWORKS].[dbo].[Person]
WHERE		[Title]<>'Poet'

SELECT DISTINCT		[Title]
FROM				[ADVENTUREWORKS].[dbo].[Person]

SELECT 
			[BusinessEntityId],
			[FirstName],
			[MiddleName],
			[LastName]
FROM		[ADVENTUREWORKS].[dbo].[Person]
WHERE		[LastName] LIKE '%o%'

SELECT 
			[BusinessEntityId],
			[FirstName],
			[MiddleName],
			[LastName]
FROM		[ADVENTUREWORKS].[dbo].[Person]
WHERE		[LastName] LIKE '_o%'

SELECT 
			[BusinessEntityId],
			[FirstName],
			[MiddleName],
			[LastName]
FROM		[ADVENTUREWORKS].[dbo].[Person]
WHERE		[LastName] LIKE '[ERMH]%'

SELECT 
			[BusinessEntityId],
			[FirstName],
			[MiddleName],
			[LastName]
FROM		[ADVENTUREWORKS].[dbo].[Person]
WHERE		[LastName] LIKE '[^ERMH]%'

SELECT 
			[RowGuid],
			[BusinessEntityId],
			[FirstName],
			[LastName]
FROM		[ADVENTUREWORKS].[dbo].[Person]
ORDER BY	[RowGuid] DESC, [FirstName] ASC

SELECT TOP 3 [BusinessEntityId], [FirstName] FROM [ADVENTUREWORKS].[dbo].[Person] ORDER BY [BusinessEntityId]
SELECT TOP 80 PERCENT [BusinessEntityId], [FirstName] FROM [ADVENTUREWORKS].[dbo].[Person] ORDER BY [BusinessEntityId] DESC

SELECT 
			CONCAT([FirstName],' is a ',[Title]) AS [People's Profession]
FROM		[ADVENTUREWORKS].[dbo].[Person]