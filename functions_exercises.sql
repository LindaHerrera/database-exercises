USE employees_db;

select *
from employees
where (first_name = 'Irena'
       or first_name = 'Vidya'
       or first_name = 'Maya')
      and gender = 'M'
order by first_name;

select *
from employees
where first_name in('irena', 'vidva', 'maya')
      and gender = 'm'
order by last_name, first_name;


select *
from employees
where last_name like 'E%'
order by emp_no;

select *
from employees
where hire_date like '199%';



select *
from employees
where birth_date like '%-12-25';

select *
from employees
where last_name like '%q%';


select *
from employees
where last_name like 'E%'
      or last_name like '%E'
order by emp_no;




select *
from employees
where last_name not like '%qu%'
      and last_name like '%q%';




#refactored so first and last names are concated together
select CONCAT(first_name, last_name)
from employees
where last_name like 'E%'
             or last_name like '%E';


#how many days they have been working at the company
select DATEDIFF(now(), hire_date)
from employees
where hire_date like '199%-%-%'
      and birth_date like '%-12-25'
order by  birth_date ASC, hire_date DESC;

