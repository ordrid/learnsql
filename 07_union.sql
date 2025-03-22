SELECT
	first_name
	, last_name
FROM
	employee_demographics
UNION ALL -- DISTINCT by default
SELECT
	first_name
	, last_name
FROM
	employee_salary;

SELECT
	first_name
	, last_name
	, 'old (male)' AS label
FROM
	employee_demographics
WHERE
	age > 40
	AND gender = 'Male'
UNION
SELECT
	first_name
	, last_name
	, 'old (female)' AS label
FROM
	employee_demographics
WHERE
	age > 40
	AND gender = 'Female'
UNION
SELECT
	first_name
	, last_name
	, 'highly paid' AS label
FROM
	employee_salary
WHERE salary > 70_000
ORDER BY
	first_name
	, last_name
;
