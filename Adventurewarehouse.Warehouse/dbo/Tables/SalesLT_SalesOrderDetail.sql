CREATE TABLE [dbo].[SalesLT_SalesOrderDetail] (

	[LineTotal] decimal(38,18) NULL, 
	[rowguid] varchar(8000) NULL, 
	[ModifiedDate] datetime2(6) NULL, 
	[SalesOrderID] int NULL, 
	[SalesOrderDetailID] int NULL, 
	[OrderQty] smallint NULL, 
	[ProductID] int NULL, 
	[UnitPrice] decimal(38,18) NULL, 
	[UnitPriceDiscount] decimal(38,18) NULL
);