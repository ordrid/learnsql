-- temporary tables

create temporary table temp_table (
	first_name varchar(50)
	, last_name varchar(50)
	, favorite_movie varchar(100)
);

insert into temp_table
values
	('Amy', 'Winehouse', 'The Lord of the Rings: The Two Towers');

select
	*
from
	temp_table;

-- create temporary table using date from an existing table
create temporary table salary_over_50k as
select
	*
from
	employee_salary
where
	salary >= 50_000;

select
	*
from
	salary_over_50k;
