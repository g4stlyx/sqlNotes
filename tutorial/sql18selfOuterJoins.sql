USE sql_hr;

-- with inner self join, we couldn't see the manager's records since (s)he has no manager

SELECT 
	e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e
LEFT JOIN employees m
	ON e.reports_to = m.employee_id;


