-- CASE statements

SELECT
	first_name
	, last_name
	, age
	, CASE
		WHEN age <= 30 THEN 'Young'
		WHEN age BETWEEN 31 AND 50 THEN 'Old'
		WHEN age >= 50 THEN 'On Death''s Door'
	END AS age_bracket_label
FROM
	employee_demographics;

-- Get pay increase and bonus
--   < 50_000 = 5%
--   > 50_000 = 7%
--   Finance  = 10% bonus
SELECT
	first_name
	, last_name
	, salary
	, CASE
		WHEN salary < 50_000 THEN salary * 1.05
		WHEN salary > 50_000 THEN salary * 1.07 -- RIP those who made 50K
	END AS new_salary
	, CASE
		WHEN dept_id = 6 THEN  salary * 0.10
	END AS bonus
FROM
	employee_salary;
