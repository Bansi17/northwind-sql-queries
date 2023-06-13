/*33) Find the suppliers who supply the top 5 most sold products*/

/*
	(ORDER BY) Sorts the results in descending order based on product count
	(LIMIT) Retrieves only the top 5 rows, which represent the top 5 suppliers who supply most sold products
*/


SELECT s.supplier_id, s.company_name, COUNT(*) AS product_count
FROM suppliers s
JOIN products p ON s.supplier_id = p.supplier_id
JOIN order_details od ON p.product_id = od.product_id
GROUP BY s.supplier_id, s.company_name
ORDER BY product_count DESC
LIMIT 5;

