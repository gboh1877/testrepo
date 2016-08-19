select
	 color
	,name
	,ProductNumber
	,[Weight]
	,(count(*) over (partition by [weight])) CountByWeight
	,count(*) over (partition by [color]) 
from production.product
where weight is not null
order by CountByWeight desc
/*
NULL	247
Black	93
Blue	26
green	1
Grey	1
Multi	8
Red	38
Silver	43
Silver/Black	7
White	4
Yellow	36
*/