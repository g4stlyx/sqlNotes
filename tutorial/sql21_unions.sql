USE sql_store;

-- to combine queries, just using one word: UNION
-- we will sign after 2019 shipments as active, and archieved the rest

SELECT 
	order_id,
    order_date,
    "Active" AS status
FROM orders o
WHERE order_date >= "2019-01-01"

UNION

SELECT 
	order_id,
    order_date,
    "Archived" AS status
FROM orders o
WHERE order_date < "2019-01-01";
