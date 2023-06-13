/*25) Find the employees who have processed more than 100 orders*/

/*
	COUNT() Counts the number of orders processed by each employee
	(HAVING) Filters the results to only include employees who have processed more than 100 orders
*/


SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name, COUNT(o.order_id) AS total_orders
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id, employee_name
HAVING COUNT(o.order_id) > 100;

