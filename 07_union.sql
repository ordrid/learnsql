select
	first_name
	, last_name
from
	employee_demographics
union all -- distinct by default
select
	first_name
	, last_name
from
	employee_salary;

select
	first_name
	, last_name
	, 'old (male)' as label
from
	employee_demographics
where
	age > 40
	and gender = 'Male'
union
select
	first_name
	, last_name
	, 'old (female)' as label
from
	employee_demographics
where
	age > 40
	and gender = 'Female'
union
select
	first_name
	, last_name
	, 'highly paid' as label
from
	employee_salary
where salary > 70_000
order by
	first_name
	, last_name;
