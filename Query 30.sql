/*30) Find the employee who processed the most orders in August 2016*/

/*
	(ORDER BY) Sorts the results in descending order based on order count
	(LIMIT) Retrieves only the top 1 row, which represents the employee who processed the most orders in August 2016
*/


SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name, COUNT(*) AS order_count
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
WHERE o.order_date >= '2016-08-01' AND o.order_date <= '2016-08-31'
GROUP BY e.employee_id, employee_name
ORDER BY order_count DESC
LIMIT 1;

