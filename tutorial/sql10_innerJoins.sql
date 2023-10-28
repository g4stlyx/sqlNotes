USE sql_store;

SELECT order_id, o.customer_id, first_name, last_name
FROM orders AS o
JOIN customers AS c
	ON o.customer_id = c.customer_id; 

SELECT order_id, oi.product_id, quantity, oi.unit_price
FROM order_items AS oi
JOIN products AS p
	ON oi.product_id = p.product_id;