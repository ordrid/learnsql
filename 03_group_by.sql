select
    gender
    , avg(age)
from
    employee_demographics
group by
    gender;

select
    occupation
    , salary
from
    employee_salary
group by
    occupation
    , salary
;

select
    gender
    , max(age)
    , min(age)
    , count(age)
from
    employee_demographics
group by
    gender;


select *
from
    employee_demographics
order by
    gender
    , age;
