select
    gender
    , avg(salary) as avg_salary
from
    employee_demographics ed
join
    employee_salary es
    on ed.employee_id = es.employee_id
group by
    gender;

select
    gender
    , avg(salary) over () as avg_salary
from
    employee_demographics ed
join
    employee_salary es
    on ed.employee_id = es.employee_id
order by
    gender;

select
    ed.first_name
    , ed.last_name
    , ed.gender
    , avg(salary) over (partition by gender) as avg_salary
from
    employee_demographics ed
join
    employee_salary es
    on ed.employee_id = es.employee_id
order by
    gender;

select
    ed.first_name
    , ed.last_name
    , ed.gender
    , sum(salary) over (
        partition by gender
        order by ed.employee_id
    ) as rolling_total
from
    employee_demographics ed
join
    employee_salary es
    on ed.employee_id = es.employee_id
order by
    gender;

select
    ed.first_name
    , ed.last_name
    , ed.gender
    , row_number() over (
        partition by gender
        order by salary desc
    ) as row_num
    , rank() over (
        partition by gender
        order by salary desc
    ) as rank_num
    , dense_rank() over (
        partition by gender
        order by salary desc
    ) as dense_rank_num
from
    employee_demographics ed
join
    employee_salary es
    on ed.employee_id = es.employee_id
order by
    ed.gender, row_num;
