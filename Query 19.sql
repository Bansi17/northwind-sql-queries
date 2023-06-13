/*19) Find the customers who have spent more than $5000 in total*/

/*
	(JOIN) Products table with order_details based on product_id column
	(HAVING) Filters the results to include only the customers whose total spent amount is greater than $5000
*/


SELECT customers.customer_id, customers.company_name,
SUM(order_details.quantity * products.unit_price) AS total_spent
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
GROUP BY customers.customer_id, customers.company_name
HAVING SUM(order_details.quantity * products.unit_price) > 5000;



