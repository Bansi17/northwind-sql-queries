/*5) List the employees and the number of orders each employee has taken*/

/*	
(CONCAT)Groups the first name and last name together for employee_name
	(LEFT JOIN) Ensures that all employees, even those without any orders, are included in the result.
*/


SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name, COUNT(o.order_id) AS order_count
FROM employees e
LEFT JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id, employee_name;

