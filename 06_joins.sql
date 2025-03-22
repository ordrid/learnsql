-- JOINS

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- INNER JOIN
SELECT
	*
FROM
	employee_demographics AS ed
INNER JOIN employee_salary AS es
	ON ed.employee_id = es.employee_id;

-- LEFT OUTER JOIN
SELECT
	*
FROM
	employee_demographics AS ed
LEFT OUTER JOIN employee_salary AS es
	ON ed.employee_id = es.employee_id;

-- RIGHT OUTER JOIN
SELECT
	*
FROM
	employee_demographics AS ed
RIGHT OUTER JOIN employee_salary AS es
	ON ed.employee_id = es.employee_id;

-- SELF JOIN
SELECT
	es1.employee_id AS employee_santa
	, es1.first_name AS first_name_santa
	, es1.last_name AS last_name_santa
	, es2.employee_id AS employee_receiver
	, es2.first_name AS first_name_receiver
	, es2.last_name AS last_name_receiver
FROM
	employee_salary AS es1
JOIN employee_salary AS es2
	ON es1.employee_id + 1 = es2.employee_id;

-- JOINING MULTIPLE TABLES
SELECT
	*
FROM
	employee_demographics AS ed
INNER JOIN employee_salary AS es
	ON ed.employee_id = es.employee_id
INNER JOIN parks_departments pd
	ON es.dept_id = pd.department_id;
