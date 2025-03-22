SELECT
	*
FROM
	employee_salary
WHERE
	salary <= 50_000;

SELECT
	*
FROM
	employee_demographics

WHERE
	gender != 'Female';

SELECT
	*
FROM
	employee_demographics

WHERE
	birth_date > '1985-01-01';


-- Logical operators (AND, OR, NOT)
SELECT
	*
FROM
	employee_demographics

WHERE
	gender != 'Female'
	OR NOT gender = 'Male'
;

-- Logical operators follows PEMDAS
SELECT
	*
FROM
	employee_demographics

WHERE
	(first_name = 'Leslie' AND age = 44) OR age > 55;


-- LIKE
SELECT
	*
FROM
	employee_demographics
WHERE
	first_name LIKE 'A___%';
