select
	 Name
	,ListPrice
	,case
		when cast(ListPrice as int) = 0 then 'Free!'
		when cast(Listprice as int) between 0 and 40 then 'cheap'
		when cast(Listprice as int) between 41 and 100 then 'notsocheap'
		else 'Other'
	end as PriceDescription
	,cast(ListPrice as varchar(max)) + ' ' + Name
from Production.Product

--select
--	 'George ' + 'Hughes'