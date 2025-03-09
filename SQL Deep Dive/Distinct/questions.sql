/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/
SELECT
    DISTiNCT title
FROM titles;

/*
* DB: Employees
* Table: employees
* Question: How many unique birth dates are there?
*/
SELECT
    COUNT(DISTiNCT birth_date)
FROM employees;

/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/

SELECT * FROM country;
SELECT
    DISTINCT lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT NULL;
