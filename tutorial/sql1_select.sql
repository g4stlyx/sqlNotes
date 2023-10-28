USE sql_store; -- use the db "sql_store"

SELECT 
	first_name, 
    last_name, 
    points, 
    (points+10) * 10 AS "edited_points"
FROM customers
-- WHERE customer_id = 1
ORDER BY points;


SELECT DISTINCT state -- select only unique values, every value for once
FROM customers;
