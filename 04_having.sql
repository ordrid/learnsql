select
	gender
	, avg(age)
from
	employee_demographics
group by
	gender
having
	avg(age) > 40;

select
	occupation
	, avg(salary)
from
	employee_salary
where
	occupation LIKE '%Manager%'
group by
	occupation
having
	avg(salary) > 75_000;
