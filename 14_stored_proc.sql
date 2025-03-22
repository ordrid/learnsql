-- #begin: does not really work as intended in PostgreSQL vs in MySQL (the database used in the tutorial)
create procedure large_salaries()
language sql as
$$
	select
		*
	from
		employee_salary
	where
		salary >= 50_000
$$;

call large_salaries();
-- #end: should be using function instead

create function large_salaries_50k()
returns table (
    employee_id int
    , first_name varchar(50)
    , last_name varchar(50)
    , occupation varchar(50)
    , salary int
    , dept_id int
)
language sql
as $$
    select
		employee_id
		, first_name
		, last_name
		, occupation
		, salary
		, dept_id
	from
		employee_salary
	where
		salary >= 50_000;
$$;

select *
from
    large_salaries_50k();

create function large_salaries2(
    param_employee_id int
)
returns table (
    salary int
)
language sql
as $$
    select
		salary
	from
		employee_salary
	where
		employee_id = param_employee_id;
$$;


select salary
from
    large_salaries2(1);
