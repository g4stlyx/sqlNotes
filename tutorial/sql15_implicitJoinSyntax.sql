USE sql_store;

-- this method isnt recomended since you can forget the WHERE clause
-- instead, use JOIN which forces you to specify a condition like "o.customer_id = c.customer_id"

SELECT *
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id ;

SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;