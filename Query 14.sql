/*14) Find the most expensive product in each category*/

/*
	Main query filters the results by comparing the category and unit price to the results of the subquery 
	The subquery retrieves the maximum unit price for each category using the MAX() function and grouping by category_id
*/


SELECT p.category_id, c.category_name, p.product_id, p.product_name, p.unit_price
FROM products p
JOIN categories c ON p.category_id = c.category_id
WHERE (p.category_id, p.unit_price) IN (
  SELECT category_id, MAX(unit_price)
  FROM products
  GROUP BY category_id
);
