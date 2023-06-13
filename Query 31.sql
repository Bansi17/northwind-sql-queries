/*31) Find the top 3 customers who have ordered the most products*/
 
/*
	(ORDER BY) Sorts the results in descending order based on product count
	(LIMIT) Retrieves only the top 3 rows, which represent the top 3 customers who have ordered the most products
*/


 SELECT c.customer_id, c.company_name, COUNT(*) AS product_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.company_name
ORDER BY product_count DESC
LIMIT 3;


