/*8) Find the products that have never been ordered*/

/* 
	(DISTINCT) Subquery to select the distinct product_id values from order_details
	Main query filters the products by those product_id values that are not present in the subquery result, indicating they have never been ordered
*/


SELECT product_id, product_name
FROM products
WHERE product_id NOT IN (
  SELECT DISTINCT product_id
  FROM order_details
);
