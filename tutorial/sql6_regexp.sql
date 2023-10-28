USE sql_store;

SELECT *
FROM customers
-- WHERE last_name LIKE "%field%" -- contains field
-- WHERE last_name REGEXP "field" -- contains field
-- WHERE last_name REGEXP "^field" -- starts with field
-- WHERE last_name REGEXP "field$" -- ends with field
-- WHERE last_name REGEXP "field|mac|rose" -- contains field or mac or rose
-- WHERE last_name REGEXP "field$|mac|rose" -- ends with field or contains mac or rose
-- WHERE last_name REGEXP "[gim]e" -- contains ge, ie, me somewhere in their last_name
WHERE last_name REGEXP "[a-h]e" -- = [abcdefgh]e 

