/*15) Find the total revenue for the year 2016*/

/*
   Select statement calculates the total_revenue by using the SUM function 
	(WHERE) Filters the orders based on the year 2016 by extracting the year from the order_date column
*/


SELECT
SUM(order_details.quantity * products.unit_price) AS total_revenue
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
WHERE YEAR(orders.order_date) = 2016;


