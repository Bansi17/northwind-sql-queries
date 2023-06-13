/*10) List all ‘Orders’ with ‘Customer’ details and ‘Employee’ who processed it*/

/*
	(CONCAT)Groups the first name and last name together for employee_name
	This will give you the list of all orders with the associated customer details and the employee who processed each order.
*/


SELECT o.order_id, o.order_date, c.customer_id, c.company_name, e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN employees e ON o.employee_id = e.employee_id;



