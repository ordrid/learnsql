-- JOINS

select *
from employee_demographics;

select *
from employee_salary;

-- INNER JOIN
select *
from
    employee_demographics as ed
inner join employee_salary as es
    on ed.employee_id = es.employee_id;

-- LEFT OUTER JOIN
select *
from
    employee_demographics as ed
left outer join employee_salary as es
    on ed.employee_id = es.employee_id;

-- RIGHT OUTER JOIN
select *
from
    employee_demographics as ed
right outer join employee_salary as es
    on ed.employee_id = es.employee_id;

-- SELF JOIN
select
    es1.employee_id as employee_santa
    , es1.first_name as first_name_santa
    , es1.last_name as last_name_santa
    , es2.employee_id as employee_receiver
    , es2.first_name as first_name_receiver
    , es2.last_name as last_name_receiver
from
    employee_salary as es1
join employee_salary as es2
    on es1.employee_id + 1 = es2.employee_id;

-- JOINING MULTIPLE TABLES
select *
from
    employee_demographics as ed
inner join employee_salary as es
    on ed.employee_id = es.employee_id
inner join parks_departments pd
    on es.dept_id = pd.department_id;
