select top 10
	 p.Name
	,p.ListPrice
	,cast(p.StandardCost as decimal(10,2))
	,p.Color
	,sod.CarrierTrackingNumber
	,sod.OrderQty
	,sod.UnitPrice
	,sod.LineTotal
	,soh.OrderDate
	,cast(soh.DueDate as date) DueDate
	,datename(yy, soh.DueDate)
	,DATEADD(m, DATEDIFF(m, 0, soh.OrderDate), 0)-1 test
	,soh.shipdate

from [Sales].[SalesOrderDetail] sod with (nolock)
inner JOIN PRODUCTION.Product p with (nolock)
	 ON SOD.ProductID = p.ProductID
inner JOIN Sales.SalesOrderHeader soh with (nolock)
	 ON soh.salesorderid = sod.SalesOrderID
where 1=1
	 