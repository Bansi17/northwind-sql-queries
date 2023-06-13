/*35) Find the total sales for each year*/

/*
	(ORDER BY) Sorts the result in ascending order based on the year
	(Total sales) multiplying the 'quantity' and 'unit_price' columns from the products table
*/



SELECT YEAR(o.order_date) AS year,
SUM(od.quantity * p.unit_price) AS total_sales
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY year
ORDER BY year;
