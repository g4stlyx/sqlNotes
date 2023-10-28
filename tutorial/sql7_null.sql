USE sql_store;

-- customers which dont have a phone number
SELECT *
FROM customers
WHERE phone IS NULL;


-- orders which are not shipped yet
SELECT *
FROM orders
WHERE shipped_date IS NULL
