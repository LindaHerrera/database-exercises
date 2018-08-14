USE employees_db;

#to run all titles in table
SELECT DISTINCT title FROM titles;

#List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;


# employees born on Christmas and hired in the 90s  Update it to find just the first 5 employees
select *
from employees
where hire_date like '199%-%-%'
      and birth_date like '%-12-25'
order by  birth_date ASC, hire_date DESC
LIMIT 5;


select *
from employees
where hire_date like '199%-%-%'
      and birth_date like '%-12-25'
order by  birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;