select *
from
    public.employee_demographics;

select
    first_name
    , last_name
    , birth_date
    , age
    , age + 10 as ten_years_later
from
    employee_demographics;

select distinct
    first_name
    , gender
from
    employee_demographics;
