select
	 name
	,isnull(color, 'NULL') color
	,listprice 
	,rank() over (partition by color order by listprice asc)
	,dense_rank() over (partition by color order by listprice asc)
	,ntile(10) over (partition by color order by listprice asc)
from production.Product 
order by color, ListPrice