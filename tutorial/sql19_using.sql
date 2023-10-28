USE sql_store;

-- if row names are the same while JOINing, it is better to use USING since it makes the statement shorter and better-looking

SELECT
	o.order_id,
    c.first_name
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;

SELECT
	o.order_id,
    c.first_name,
    sh.name AS shipper
FROM orders o
JOIN customers c
	USING (customer_id)
LEFT JOIN shippers sh
	USING (shipper_id);
    
    
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id 
		AND oi.product_id = oin.product_id;
        
SELECT *
FROM order_items oi
LEFT JOIN order_item_notes oin
	USING (order_id,product_id);
