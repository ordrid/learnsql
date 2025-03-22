-- String functions

SELECT LENGTH('skyfall');

SELECT
	first_name
	, LENGTH(first_name) AS first_name_length
FROM
	employee_demographics
ORDER BY
	first_name_length;


SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT
	first_name
	, UPPER(first_name) AS first_name_uppercase
FROM
	employee_demographics;

SELECT
	first_name
	, LOWER(first_name) AS first_name_lowercase
FROM
	employee_demographics;

SELECT TRIM('     sky    ') AS trimmed_sky;
SELECT LTRIM('     sky    ') AS left_trimmed_sky;
SELECT RTRIM('     sky    ') AS right_trimmed_sky;


SELECT
	first_name
	, LEFT(first_name, 4) AS first_four
	, RIGHT(first_name, 4) AS last_four
	, SUBSTRING(first_name, 3, 2)
	, birth_date
	, SUBSTRING(birth_date::TEXT, 6, 2) AS birth_month
FROM
	employee_demographics;

SELECT
	first_name
	, REPLACE(first_name, 'a', 'z') AS zname
FROM
	employee_demographics;

SELECT POSITION('X' IN 'ALEXANDER X');

SELECT 
	first_name
	, POSITION('An' IN first_name)
FROM
	employee_demographics;

SELECT 
	first_name
	, last_name
	, CONCAT(first_name, ' ', last_name) AS full_name
FROM
	employee_demographics;
