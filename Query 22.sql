/*22) Get the employees who have processed orders for ‘Chai’ product*/

/*
	(WHERE) Filters the results to include only the orders that have the 'Chai' product based on the 'product_name' column from the 'products' table
	(CONCAT)Groups the first name and last name together for employee_name
*/


SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE p.product_name = 'Chai';

