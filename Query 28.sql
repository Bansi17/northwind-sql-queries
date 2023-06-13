/*28) Find the top 3 most popular categories of products ordered*/

/*
	(ORDER BY) Sorts the results in descending order based on order count
	(LIMIT) Retrieves only the top 3 rows, which represent the top 3 most popular categories of products ordered
*/


SELECT c.category_name, COUNT(*) AS order_count
FROM order_details od
JOIN products p ON od.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY order_count DESC
LIMIT 3;

