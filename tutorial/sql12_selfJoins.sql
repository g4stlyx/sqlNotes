USE sql_hr;

SELECT e.employee_id , e.first_name , e.job_title as "Employee Title", m.first_name as "Manager name", m.job_title as "Manager title"
FROM employees e
JOIN employees m -- short for manager, it must be different from one above
	ON e.reports_to = m.employee_id;



