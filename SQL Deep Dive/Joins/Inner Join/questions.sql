
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT 
    o.orderid, c.firstname, c.lastname, o.customerid, c.state
FROM orders AS o
INNER JOIN customers AS c ON c.customerid = o.customerid
WHERE c.state in ('OH', 'NY', 'OR')
ORDER BY o.orderid; = o.customerid;

/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT
    p.prod_id, p.title, i.quan_in_stock
FROM products AS p
INNER JOIN inventory AS i USING(prod_id)
ORDER BY i.quan_in_stock;

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
SELECT
    e.first_name, e.last_name, depa.dept_name
FROM employees AS e
INNER JOIN dept_emp AS dept ON e.emp_no = dept.emp_no
INNER JOIN departments AS depa USING(dept_no)
ORDER BY depa.dept_name;



