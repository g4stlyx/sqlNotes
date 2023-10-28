USE sql_store;

-- same functionality with functions like startsWith() and endsWith() etc.

-- %: any number of characters
-- _: single character

SELECT *
FROM customers
WHERE last_name LIKE "b%";

SELECT *
FROM customers
WHERE last_name LIKE "b%eld";

SELECT *
FROM customers
WHERE last_name LIKE "%eld";

SELECT *
FROM customers
WHERE last_name LIKE "_____y"; -- exactly 5 characters before y

SELECT *
FROM customers
WHERE last_name LIKE "b____y";

-- address should include trail or avenue, phone number shouldnt end with 0
SELECT *
FROM customers
WHERE (address LIKE "%trail%" 
OR address LIKE "%avenue%")
AND phone NOT LIKE "%0";
