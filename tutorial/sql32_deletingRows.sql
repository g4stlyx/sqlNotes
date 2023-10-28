USE sql_invoicing;

DELETE FROM invoices
WHERE invoice_id IN
		(SELECT invoice_id
        FROM clients
        WHERE name= "Myworks");