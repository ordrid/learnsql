-- String functions

select length('skyfall');

select
    first_name
    , length(first_name) as first_name_length
from
    employee_demographics
order by
    first_name_length;


select upper('sky');
select lower('SKY');

select
    first_name
    , upper(first_name) as first_name_uppercase
from
    employee_demographics;

select
    first_name
    , lower(first_name) as first_name_lowercase
from
    employee_demographics;

select trim('     sky    ') as trimmed_sky;
select ltrim('     sky    ') as left_trimmed_sky;
select rtrim('     sky    ') as right_trimmed_sky;


select
    first_name
    , left(first_name, 4) as first_four
    , right(first_name, 4) as last_four
    , substring(first_name, 3, 2)
    , birth_date
    , substring(birth_date::text, 6, 2) as birth_month
from
    employee_demographics;

select
    first_name
    , replace(first_name, 'a', 'z') as zname
from
    employee_demographics;

select position('X' in 'ALEXANDER X');

select
    first_name
    , position('An' in first_name)
from
    employee_demographics;

select
    first_name
    , last_name
    , concat(first_name, ' ', last_name) as full_name
from
    employee_demographics;
