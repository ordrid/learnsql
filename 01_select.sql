SELECT
	*
FROM
	public.employee_demographics;

SELECT
	first_name
	, last_name
	, birth_date
	, age
	, age + 10 AS ten_years_later
FROM
	employee_demographics;

SELECT DISTINCT
	first_name
	, gender
FROM
	employee_demographics;
