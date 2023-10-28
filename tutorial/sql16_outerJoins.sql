USE sql_store;

-- although you use INNER JOIN whenever you write JOIN, you can optionally specify it too by writing INNER JOIN
 

-- we now see the only customers which have orders
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

/* two types of outer joins

LEFT JOIN: all records from the left(c here) table return, sql doesnt care abt the condition you wrote(o.customer_id=c.customer_id)
RIGHT JOIN: all records from the right(o here) table return, sql doesnt care abt the condition you wrote(o.customer_id=c.customer_id)

avoid using right join, use left join instead and swap the tables. this is the best practice
*/


-- we use outer join when we need to see all records of a table, regardless of the condition we wrote
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;


SELECT 
	p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id
ORDER BY p.product_id;