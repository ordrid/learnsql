-- LIMITS, OFFSET
select *
from
    employee_demographics
order by
    age desc
limit 3;

select *
from
    employee_demographics
order by
    age desc
limit
    3
    offset 1;

-- ALIASING
-- NOTE: does not work in PostgreSQL
select
    gender
    , avg(age) as avg_age
from
    employee_demographics
group by
    gender
having
    avg_age > 40;
