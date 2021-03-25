
SELECT * from [ADVENTUREWORKS].[dbo].[Person]

INSERT INTO [ADVENTUREWORKS].[dbo].[Person]
(
	[PersonType],
	[NameStyle],
	[Title],
	[FirstName],
	[MiddleName],
	[LastName],
	[Suffix],
	[EmailPromotion],
	[Demographics],
	[RowGuid],
	[ModifiedDate]
)
VALUES
('F','F-M-I','Poet','Bella','Elizabeth','Rochester','Ms',666,'45Female',9,'20191028 12:56:00')

INSERT INTO [ADVENTUREWORKS].[dbo].[Person]
(
	[PersonType],
	[NameStyle],
	[Title],
	[FirstName],
	[MiddleName],
	[LastName],
	[Suffix],
	[EmailPromotion],
	[AdditionalContactInfo],
	[Demographics],
	[RowGuid],
	[ModifiedDate]
)
VALUES
('M','F-M-I','Asst','John','Paul','Rodrigues','Mr',50,'Lives in New Jersey','500 Male',2,'20190618 10:45:00'),
('M','F-M-I','DTV','Sherlock','','Holmes','Mr',70,'Lives in London','1000 Male',5,'20190722 11:50:00'),
('M','F-M-I','Crime','James','','Moriarty','Mr',90,'Lives in London','500 Female',6,'20190921 03:30:00'),
('F','F-M-I','Poet','Sarah','Elizabeth','Austen','Mrs',500,'Lives in Poland','5500 Male',10,'20191028 12:56:00'),
('M','F-M-I','Actor',',Josh','Tom','Ellis','Mr',800,'Lives in New York','200 Female',11,'20190101 02:45:00'),
('F','F-M-I','Writer','Emily','David','Sanchez','Mr',50,'Lives in Paris','50 Male',1,'20190314 11:46:56')



--COUNTRYREGION
INSERT INTO [ADVENTUREWORKS].[dbo].[CountryRegion]
(
	[CountryRegionCode],
	[Name],
	[ModifiedDate]
)
VALUES
('L01','London','20190808 00:00:00 AM'),
('N01','New York','20190808 00:00:00 AM'),
('PA1','Paris','20190808 00:00:00 AM')

SELECT * from [ADVENTUREWORKS].[dbo].[CountryRegion]


--STATEPROVINCE
INSERT INTO [ADVENTUREWORKS].[dbo].[StateProvince]
(
	[StateProvinceCode],
	[CountryRegionCode],
	[IsOnlyStateProvinceFlag],
	[Name],
	[TerritoryID],
	[RowGuid],
	[ModifiedDate]
)
VALUES
('SP1','L01',0,'Sherlock',01,5,'20190722 11:50:00 PM'),
('SP4','L01',1,'James',02,6,'20190921 03:30:00'),
('SP3','PA1',0,'S',05,1,'20190314 11:46:56'),
('SP2','N01',1,'Paul',03,2,'20190618 10:45:00')

SELECT * from [ADVENTUREWORKS].[dbo].[StateProvince]

--inserts without TerritoryID and Default constraint sets the default Territory
INSERT INTO [ADVENTUREWORKS].[dbo].[StateProvince]
(
	[StateProvinceCode],
	[CountryRegionCode],
	[IsOnlyStateProvinceFlag],
	[Name],
	[RowGuid],
	[ModifiedDate]
)
VALUES
('SP5','N01',1,'Josh',11,'20190101 02:45:00')

--The INSERT statement conflicted with the CHECK constraint "CK_StateProvince_TerritoryID". The conflict occurred in database "ADVENTUREWORKS", table "dbo.StateProvince", column 'TerritoryID'.
INSERT INTO [ADVENTUREWORKS].[dbo].[StateProvince]
(
	[TerritoryID],
	[StateProvinceCode],
	[CountryRegionCode],
	[IsOnlyStateProvinceFlag],
	[Name],
	[RowGuid],
	[ModifiedDate]
)
VALUES
(9000,'SP5','N01',1,'Josh',11,'20190101 02:45:00')

--The INSERT statement conflicted with the FOREIGN KEY constraint "FK__StateProv__Count__33D4B598". The conflict occurred in database "ADVENTUREWORKS", table "dbo.CountryRegion", column 'CountryRegionCode'.
--FOREIGN KEY VIOLATION
INSERT INTO [ADVENTUREWORKS].[dbo].[StateProvince]
(
	[TerritoryID],
	[StateProvinceCode],
	[CountryRegionCode],
	[IsOnlyStateProvinceFlag],
	[Name],
	[RowGuid],
	[ModifiedDate]
)
VALUES
(7,'SP6','Z01',1,'Josh',12,'20190101 02:45:00')