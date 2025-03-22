select
	*
from
	employee_salary
where
	salary <= 50_000;

select
	*
from
	employee_demographics
where
	gender != 'Female';

select
	*
from
	employee_demographics
where
	birth_date > '1985-01-01';


-- Logical operators (and, or, NOT)
select
	*
from
	employee_demographics
where
	gender != 'Female'
	or NOT gender = 'Male';

-- Logical operators follows PEMDAS
select
	*
from
	employee_demographics
where
	(first_name = 'Leslie' and age = 44) or age > 55;


-- like
select
	*
from
	employee_demographics
where
	first_name like 'A___%';
