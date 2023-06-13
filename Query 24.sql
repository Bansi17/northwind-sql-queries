/*24) Find the order with the highest total cost*/

/*
	(GROUP BY) Groups the result by orders.order_id to calculate the total cost for each order.
	(ORDER BY) sort the results in descending order based on the total cost
	(LIMIT) Used to retrieve only the top 1 row, which represents the order with the highest total cost
*/


SELECT orders.order_id,
SUM(products.unit_price) AS total_cost
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
GROUP BY orders.order_id
ORDER BY total_cost DESC
LIMIT 1;


