-- case statements

select
	first_name
	, last_name
	, age
	, case
		when age <= 30 then 'Young'
		when age between 31 AND 50 then 'Old'
		when age >= 50 then 'On Death''s Door'
	end as age_bracket_label
from
	employee_demographics;

-- Get pay increase and bonus
--   < 50_000 = 5%
--   > 50_000 = 7%
--   Finance  = 10% bonus
select
	first_name
	, last_name
	, salary
	, case
		when salary < 50_000 then salary * 1.05
		when salary > 50_000 then salary * 1.07 -- RIP those who made 50K
	end as new_salary
	, case
		when dept_id = 6 then  salary * 0.10
	end as bonus
from
	employee_salary;
