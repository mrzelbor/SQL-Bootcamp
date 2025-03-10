/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/
SELECT
    e.first_name, e.last_name, COUNT(t.title) AS "2+ Titles", e.hire_date
FROM employees AS e
INNER JOIN titles AS t USING(emp_no)
WHERE EXTRACT (YEAR FROM e.hire_date) > 1991
GROUP BY emp_no
HAVING COUNT(t.title) > 2
ORDER BY e.first_name;

/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
SELECT
    e.emp_no, e.first_name, e.last_name, COUNT(s.salary) as "Total Raises"
FROM employees AS e
INNER JOIN salaries AS s USING(emp_no)
INNER JOIN dept_emp AS dept_e USING(emp_no)
INNER JOIN departments AS dept USING(dept_no)
WHERE dept_name = 'Development'
GROUP BY e.emp_no, e.first_name, e.last_name
HAVING COUNT(s.salary) > 15;

/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/
SELECT
    e.emp_no, e.first_name, e.last_name, COUNT(dept.dept_name) as "Total Dept"
FROM employees AS e
INNER JOIN dept_emp AS dept_e USING(emp_no)
INNER JOIN departments AS dept USING(dept_no)
GROUP BY e.emp_no, e.first_name, e.last_name
HAVING COUNT(dept.dept_name) > 1;
