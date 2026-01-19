CREATE TABLE [dbo].[SalesLT_Product] (

	[ProductID] int NULL, 
	[Name] varchar(8000) NULL, 
	[ProductNumber] varchar(8000) NULL, 
	[Color] varchar(8000) NULL, 
	[StandardCost] decimal(38,18) NULL, 
	[ListPrice] decimal(38,18) NULL, 
	[DiscontinuedDate] datetime2(6) NULL, 
	[ThumbNailPhoto] varbinary(8000) NULL, 
	[ThumbnailPhotoFileName] varchar(8000) NULL, 
	[rowguid] varchar(8000) NULL, 
	[ModifiedDate] datetime2(6) NULL, 
	[Size] varchar(8000) NULL, 
	[Weight] decimal(38,18) NULL, 
	[ProductCategoryID] int NULL, 
	[ProductModelID] int NULL, 
	[SellStartDate] datetime2(6) NULL, 
	[SellEndDate] datetime2(6) NULL
);