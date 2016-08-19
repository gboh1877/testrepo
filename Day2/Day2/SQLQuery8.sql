-- lag and lead
select
	 [Salesorderid]
	,SalesOrderDetailid
	,lead(salesorderdetailid) over (partition by salesorderid order by [Salesorderdetailid] asc)
	,lag(salesorderdetailid) over (partition by salesorderid order by [Salesorderdetailid] asc)
	,first_value(salesorderdetailid) over (partition by salesorderid order by [Salesorderdetailid] asc)
	,last_value(salesorderdetailid) over (partition by salesorderid order by [Salesorderdetailid] asc rows between unbounded preceding and unbounded following)
	,ProductID
	,LineTotal
from sales.SalesOrderDetail
order by 1, 2