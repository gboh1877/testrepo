select
	 p.ProductNumber
	,count(*) SaleCount
from [Sales].[SalesOrderDetail] sod with (nolock)
inner JOIN PRODUCTION.Product p with (nolock)
	 ON SOD.ProductID = p.ProductID
inner JOIN Sales.SalesOrderHeader soh with (nolock)
	 ON soh.salesorderid = sod.SalesOrderID
where
	 p.Color = 'Red'
	 
group by 
	 p.ProductNumber
having 
	 count(*) >= 500