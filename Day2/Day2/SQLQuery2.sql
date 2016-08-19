select
	 BusinessEntityID
	,lastname
	,FirstName
from [Person].[Person] -- 19972
union all
select
	 ProductID
	,Name
	,ProductNumber
from [Production].[Product] --504

--select 'a' as col1
--union select 'b' as col1