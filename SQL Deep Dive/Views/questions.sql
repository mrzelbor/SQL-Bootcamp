/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/
CREATE OR REPLACE VIEW "90-95" AS
SELECT
	*
FROM public.employees
WHERE hire_date BETWEEN '1990-01-01' AND '1995-12-31';

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/
CREATE OR REPLACE VIEW "bigbucks" AS
SELECT *
FROM salaries
WHERE salary > 80000;
