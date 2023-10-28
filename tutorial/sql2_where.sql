-- use WHERE to filter data
-- with >,>=,<,<=,=,!=
-- AND, OR, NOT

USE sql_store;

-- SELECT *
-- FROM customers
-- WHERE birth_date >= "1990-01-01"
-- OR (points > 1000 AND state="VA") ;


-- From order_items table, get the items from order #6, total price is greater than 30
SELECT *
FROM order_items
WHERE order_id = 6
AND unit_price * quantity > 30;

