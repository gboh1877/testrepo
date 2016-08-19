select
	 avg(sod.LineTotal) avgspend
	,stdev(sod.LineTotal) stdevspend
	,min(sod.LineTotal) minspend
	,max(sod.LineTotal) maxspend
	,datename(qq,soh.orderdate) + datename(yy,soh.orderdate) yrqtr

from [Sales].[SalesOrderDetail] sod with (nolock)
inner JOIN PRODUCTION.Product p with (nolock)
	 ON SOD.ProductID = p.ProductID
inner JOIN Sales.SalesOrderHeader soh with (nolock)
	 ON soh.salesorderid = sod.SalesOrderID
group by 
	 datename(qq,soh.orderdate) + datename(yy,soh.orderdate)