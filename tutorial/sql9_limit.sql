USE sql_store;

-- to limit the number of rows returning
-- good for pagination

SELECT *
FROM customers
LIMIT 6,3; -- skip first 6 records, return customer 7, 8, and 9

-- top 3 customers by their points 
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;