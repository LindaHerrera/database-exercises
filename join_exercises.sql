use employees;

#write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT_WS(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
JOIN dept_manager dm on dm.dept_no = d.dept_no
JOIN employees e on e.emp_no = dm.emp_no
WHERE dm.to_date > now()
ORDER BY d.dept_name;

#Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT_WS(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
  JOIN dept_manager dm on dm.dept_no = d.dept_no
  JOIN employees e on e.emp_no = dm.emp_no
WHERE dm.to_date > now()
AND e.gender = 'F'
ORDER BY d.dept_name; #not needed unless you want results in same exact order

#Find the current titles of employees currently working in the Customer Service department.
SELECT t.title as 'Title', count(t.title) AS 'Count'
FROM titles t
  JOIN dept_emp de on de.emp_no = t.emp_no
  where de.dept_no = 'd009'
  AND t.to_date > now()
  AND de.to_date > now()
GROUP BY t.title;

#Find the current salary of all current managers.

# SELECT *
# FROM employees e
# JOIN dept_manager manager on e.emp_no = manager.emp_no
# JOIN salaries s on e.emp_no = s.emp_no
# WHERE manager.to_date > now()
# AND s.to_date > now()
# ORDER BY d.dept_name;