/*6) Get the customers who have placed more than 10 orders*/

/*
	COUNT() Counts the number of orders for each customer
	(GROUP BY) Results are grouped by customer_id
	(HAVING BY) Filters results and only includes customers with more than 10 orders
*/


SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 10;


