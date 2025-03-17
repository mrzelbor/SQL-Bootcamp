/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/
SELECT 
    title
    ,actor
    ,price
    ,NULLIF(special,0)
FROM products
ORDER BY nullif;
