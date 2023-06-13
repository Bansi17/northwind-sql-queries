/*32) Find the employees who have not processed any orders*/

/*
	Query uses a LEFT JOIN between the 'employees' table and the orders table on the 'employee_id' column 
	WHERE filters the results to include only the rows where the employee_id in the orders table is NULL, indicating that there are no corresponding orders for that employee
*/


SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name
FROM employees e
LEFT JOIN orders o ON e.employee_id = o.employee_id
WHERE o.employee_id IS NULL;

