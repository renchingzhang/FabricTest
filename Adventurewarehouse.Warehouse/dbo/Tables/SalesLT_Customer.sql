CREATE TABLE [dbo].[SalesLT_Customer] (

	[CustomerID] int NULL, 
	[NameStyle] bit NULL, 
	[Title] varchar(8000) NULL, 
	[FirstName] varchar(8000) NULL, 
	[MiddleName] varchar(8000) NULL, 
	[LastName] varchar(8000) NULL, 
	[PasswordSalt] varchar(8000) NULL, 
	[rowguid] varchar(8000) NULL, 
	[ModifiedDate] datetime2(6) NULL, 
	[Suffix] varchar(8000) NULL, 
	[CompanyName] varchar(8000) NULL, 
	[SalesPerson] varchar(8000) NULL, 
	[EmailAddress] varchar(8000) NULL, 
	[Phone] varchar(8000) NULL, 
	[PasswordHash] varchar(8000) NULL
);