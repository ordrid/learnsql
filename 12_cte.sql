with cte_example as (
	select
		gender
		, avg(salary) as avg_salary
		, max(salary) as max_salary
		, min(salary) as min_salary
	from
		employee_demographics ed
	join employee_salary es
		on ed.employee_id = es.employee_id
	group by
		gender
)
select
	avg(avg_salary)
from
	cte_example;

with cte1 as (
	select
		employee_id
		, birth_date
	from
		employee_demographics ed
	where
		birth_date > '1985-01-01'
)
, cte2 as (
	select
		employee_id
		, salary
	from
		employee_salary
	where
		salary > 50_000
)
select
	cte1.employee_id
	, cte1.birth_date
	, cte2.salary
from
	cte1
join cte2
	on cte1.employee_id = cte2.employee_id;
