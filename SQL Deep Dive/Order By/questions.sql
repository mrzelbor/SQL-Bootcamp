/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
SELECT
    *
FROM employees
ORDER BY first_name, last_name DESC;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
SELECT
    AGE(birth_date), *
FROM employees
ORDER BY age;

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
SELECT
    *
FROM employees
WHERE first_name ILIKE 'K%'
ORDER BY hire_date;
