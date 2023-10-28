USE sql_invoicing;

-- in this case, we dont know the client_id of the client "Myworks"
-- we used SELECT subquery to solve this problem

/*
UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id =
			(SELECT client_id
			FROM clients
			WHERE name = "Myworks");
*/

-- we updated every row including "CA" or "NY" as state

UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id IN
			(SELECT client_id
			FROM clients
			WHERE state IN ("CA","NY"));