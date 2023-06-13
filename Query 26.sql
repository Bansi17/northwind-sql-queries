/*26) Find the customer who has ordered the most ‘Chai’ product*/

/*
	(COUNT) Counts the no. of orders
	(ORDER BY) sort the results in descending order based on the total number of orders
	(LIMIT) Retrieve only the top 1 row, which represents the customer who has ordered the most 'Chai' product
*/


SELECT c.customer_id, c.company_name, COUNT(*) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE p.product_name = 'Chai'
GROUP BY c.customer_id, c.company_name
ORDER BY total_orders DESC
LIMIT 1;

