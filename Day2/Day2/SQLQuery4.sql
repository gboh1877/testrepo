select
	 FirstName
	,MiddleName
	,LastName
	,FirstName + ' ' + ISNULL(MiddleName, '') + ' ' + LastName
from Person.Person

--select
--	 middlename
--	,isnull(nullif(middlename, 'B'), 'badname')
--from person.Person