use AdventureWorks2014;
go
select 
	 ProductID
	,[Name] [ProductName]
	,substring(right(name,4),1,3) test
	,[Weight]
	,[Class]
	,StandardCost
	,ListPrice
	,ListPrice - StandardCost Profit
from AdventureWorks2014.[Production].[Product];
go