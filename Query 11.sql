/*11) Calculate the average product price by category*/

/*
	AVG() Calculates the average product price by taking the average of the unit_price column from the products table 
	(GROUP BY) Results are grouped by category_id'and category_name
*/


SELECT c.category_id, c.category_name, AVG(p.unit_price) AS average_price
FROM products p
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_id, c.category_name;

