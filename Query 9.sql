/*9) Find the customers who have not placed any orders*/

/*
	(LEFT JOIN) Performs left join with orders table based on customer_id column
	(WHERE) Filters the result to only include rows where the customer_id in the orders table is NULL, indicating that the customer has not placed any orders
*/


SELECT c.customer_id, c.company_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;
