/*
USE sql_invoicing;

UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id =3;
*/

-- if you are using MySQL Workbench, you have to disable the safe update mode to update multiple rows

USE sql_store;

UPDATE customers
SET points = points + 50
WHERE birth_date < "1990-01-01";


