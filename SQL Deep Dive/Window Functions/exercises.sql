/*
*  Show the population per continent
*  Database: World
*  Table: Country
*/
SELECT
    DISTINCT continent
    ,SUM(population) OVER(PARTITION BY continent) AS "Total Population"
FROM country;

/*
*  To the previous query add on the ability to calculate the percentage of the world population
*  What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
*  Make sure you convert the population numbers to float using `population::float` otherwise you may see zero pop up
*  Try to use CONCAT AND ROUND to make the data look pretty
*
*  Database: World
*  Table: Country
*/
SELECT
    DISTINCT continent
    ,SUM(population) OVER W1 AS "Total Population"
    ,CONCAT(
    ROUND(
    (
    SUM(population::float) OVER W1 /
    SUM(population::FLOAT) OVER()
    ) * 100)
    , '%') AS "Percentage of Population"
FROM country
WINDOW W1 AS (PARTITION BY continent);

/*
*  Count the number of towns per region
*
*  Database: France
*  Table: Regions (Join + Window function)
*/
SELECT
    DISTINCT r.id
    ,r.name
    ,COUNT(t.id) OVER W1 
FROM regions AS r
INNER JOIN departments AS d ON d.region = r.code
INNER JOIN towns AS t ON t.department = d.code
WINDOW W1 AS (PARTITION BY r.id)
ORDER BY r.id;
