/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/
SELECT e.hire_date, COUNT(e.hire_date)
FROM employees as e
GROUP BY e.hire_date
ORDER BY count DESC;

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/
SELECT
    e.emp_no, COUNT(t.title)
FROM employees AS e
INNER JOIN titles AS t USING(emp_no)
WHERE hire_date >= '1992-01-01'
GROUP by e.emp_no
ORDER BY count DESC;

/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/
SELECT
    e.emp_no, d.from_date, d.to_date
FROM employees AS e
INNER JOIN dept_emp AS d USING(emp_no)
WHERE d.dept_no = 'd005'
GROUP BY e.emp_no, d.from_date, d.to_date
ORDER BY e.emp_no;
