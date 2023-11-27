use [Train]
select * from [dbo].[train]


--- 1. Segmen dan Total Sales -----
select 
	[Segment],
	count([Sales]) as 'Total Sales'
 from [dbo].[train]
 Group by
[Segment]


---- 2. City dan Order Date ------
USE [Train]

-- Select all columns from [dbo].[train]
SELECT *
FROM [dbo].[train]

-- Delete rows where [City] is 'California'
DELETE FROM [dbo].[train]
WHERE [City] = '';

-- FINAL CODE ----
-- Count [Sales] and alias it as 'Total Sales', grouped by [City]
SELECT
  [Order_Date], [Ship_Date], [Customer_Name], [City], [Ship_Mode], [Segment], [Category], [State], [Region], [Sub_Category] as [Name_Item],
  COUNT([Sales]) AS 'Total Sales'
 
FROM [dbo].[train]
GROUP BY [Order_Date], [Ship_Date], [Customer_Name], [Ship_Mode], [Segment], [City], [Category], [State], [Region], [Sub_Category];

UNION

--- 2. Nama Customer dan Total Sales -----
select 
	[Customer_Name],
	count([Sales]) as 'Total Sales'
 from [dbo].[train]
 Group by
[Customer_Name]






-- FINAL CODE ----
-- Count [Sales] and alias it as 'Total Sales', grouped by [City]
SELECT
  [Order_Date], [Ship_Date], [Customer_Name], [City], [Ship_Mode], [Segment], [Category], [State], [Region], [Sub_Category] as [Name_Item],
  COUNT([Sales]) AS 'Total Sales'
FROM [dbo].[train]
GROUP BY [Order_Date], [Ship_Date], [Customer_Name], [Ship_Mode], [Segment], [City], [Category], [State], [Region], [Sub_Category]

UNION

-- Nama Customer dan Total Sales
SELECT 
  NULL as [Order_Date], NULL as [Ship_Date], [Customer_Name], NULL as [City], NULL as [Ship_Mode], NULL as [Segment], NULL as [Category], NULL as [State], NULL as [Region], NULL as [Name_Item],
  COUNT([Sales]) AS 'Total Sales'
FROM [dbo].[train]
GROUP BY [Customer_Name];
