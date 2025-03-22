-- LIMITS, OFFSET
SELECT
	*
FROM
	employee_demographics
ORDER BY
	age DESC
LIMIT 3;

SELECT
	*
FROM
	employee_demographics
ORDER BY
	age DESC
LIMIT 3
OFFSET 1;

-- ALIASING
-- NOTE: does not work in PostgreSQL
SELECT
	gender
	, AVG(age) AS avg_age
FROM
	employee_demographics
GROUP BY
	gender
HAVING
	avg_age > 40;
