/*7) Get the top 5 most sold products*/

/*
	SUM() Calculates the total quantity of each product sold by summing up the quantity column from the order_details table 
	(ORDER BY) Sorts the results in descending order based on the total quantity sold
	(LIMIT) Retrieve only the top 5 products with the highest quantity sold
*/


SELECT p.product_id, p.product_name, SUM(od.quantity) AS total_quantity_sold
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;

