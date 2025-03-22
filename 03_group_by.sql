SELECT
	gender
	, AVG(age)
FROM
	employee_demographics
GROUP BY
	gender;

SELECT
	occupation
	, salary
FROM
	employee_salary
GROUP BY
	occupation
	, salary
;

SELECT
	gender
	, MAX(age)
	, MIN(age)
	, COUNT(age)
FROM
	employee_demographics
GROUP BY
	gender;


SELECT
	*
FROM
	employee_demographics
ORDER BY
	gender
	, age;
