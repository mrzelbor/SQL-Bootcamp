/*
*  Calculate the total amount of employees per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/
SELECT
    COALESCE(dept.dept_no, 'TOTAL') AS grand_total, COUNT(emp.emp_no) as total
FROM employees AS emp
INNER JOIN dept_emp AS dept USING(emp_no)
GROUP BY GROUPING SETS ((dept.dept_no), ())
ORDER BY total, grand_total;
/*
*  Calculate the total average salary per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/
SELECT
    COALESCE(dept.dept_no, 'TOTAL') as departments, ROUND(AVG(sal.salary), 2) AS grand_total
FROM employees AS emp
INNER JOIN salaries AS sal ON sal.emp_no = emp.emp_no
INNER JOIN dept_emp AS dept ON dept.emp_no = emp.emp_no
GROUP BY GROUPING SETS((dept.dept_no), ())
ORDER BY 
    CASE 
        WHEN dept.dept_no IS NOT NULL THEN 1
        ELSE 0
    END, 
    grand_total; 
