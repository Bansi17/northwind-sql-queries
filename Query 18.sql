/*18) Find all employees who report to ‘Andrew Fuller’*/

/*
	The letter ‘f’ is used as an alias for the second instance of the employees table (aliased as e)allows for differentiation between the two instances within the query.
	(WHERE) Filters the results to only include employees whose supervisor is 'Andrew Fuller'
*/


SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name
FROM employees e
JOIN employees f ON e.reports_to = f.employee_id
WHERE CONCAT(f.first_name, ' ', f.last_name) = 'Andrew Fuller';

