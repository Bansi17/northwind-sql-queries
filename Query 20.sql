/*20) List the top 5 employees who have processed the most orders*/

/*
	COUNT() Counts the number of orders processed by each employee 
	(ORDER BY) Orders the results in descending order based on the total number of orders
	(LIMIT) Limits the result to the top 5 employees
*/


SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name, COUNT(o.order_id) AS total_orders
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id, employee_name
ORDER BY total_orders DESC
LIMIT 5;

