/**
* Database: Store
* Table: products
* Create a case statement that's named "price class" where if a product is over 20 dollars you show 'expensive'
* if it's between 10 and 20 you show 'average' 
* and of is lower than or equal to 10 you show 'cheap'.
*/
SELECT 
    title
    ,actor
    ,price
    ,CASE
        WHEN price > 20.00 THEN 'EXPENSIVE'
        WHEN price BETWEEN 10.00 AND 20.00 THEN 'AVERAGE'
        WHEN price <= 10.00 THEN 'CHEAP'
        ELSE 'na'
    END AS "Price Class"
FROM products
