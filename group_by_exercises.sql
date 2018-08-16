USE employees;

DESCRIBE employees;

# find the unique titles in the titles table
SELECT DISTINCT title FROM titles;

#employees whose last names start and end with 'E'
#Update the query and find just the unique last names that start and end with 'E' using GROUP BY
SELECT last_name
FROM employees
WHERE last_name like 'e%'
AND last_name like '%e'
GROUP BY last_name;


#Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'
SELECT DISTINCT first_name, last_name
FROM employees
WHERE (last_name like 'e%'
AND last_name like '%e')
GROUP BY first_name, last_name;


#Find the unique last names with a 'q' but not 'qu'
SELECT DISTINCT last_name
FROM employees
WHERE last_name like '%q%'
and last_name not like '%qu%';

#Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT last_name, count(*)
FROM employees
WHERE last_name like '%q%'
and last_name not like '%qu%'
group by last_name;

#Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of e
SELECT count(*), gender FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY count(*) DESC;