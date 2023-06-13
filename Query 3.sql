/*3) Get the total quantity of each product sold
*/
/*
SUM() Calculates the total quantity of each product sold by summing up the quantity column from order_details 
	(GROUP BY)  Results are grouped by product_id and product_name
*/


SELECT p.product_id, p.product_name, SUM(od.quantity) AS total_sales
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name;

