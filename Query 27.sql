/*27. Find the average quantity of products ordered in each order*/

/*
	(AVG) Find the average quantity of the products
	(GROUP BY) It groups the result with the help of the order_id

*/

SELECT order_id, AVG(quantity) AS average_quantity
FROM order_details
GROUP BY order_id;

