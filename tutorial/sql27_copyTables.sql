/*
USE sql_store;

-- it copies everything in the orders table except the features like primary key or auto increment
-- CREATE TABLE orders_archieved AS
-- SELECT * FROM orders;

-- copying specific data to a table
INSERT INTO orders_archieved
SELECT *
FROM orders
WHERE order_date < "2019-01-01"
*/

USE sql_invoicing;


CREATE TABLE invoices_archieved AS
SELECT 
	i.invoice_id,
    i.number,
    c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.payment_date,
    i.due_date
FROM invoices i
JOIN clients c
	USING (client_id)
WHERE payment_date IS NOT NULL
