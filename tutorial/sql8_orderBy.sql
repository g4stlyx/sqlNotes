USE sql_store;

-- ordered according to the customer_id by default
-- this column is primary column (pk) and its value is unique for every row

SELECT first_name, last_name
FROM customers
-- ORDER BY first_name DESC; -- DESC = descending/decreasing order
ORDER BY state DESC, birth_date;


-- MySQL allows us to order by any column, even if it is not selected
-- Other DBMS' may give an error while doing that