/*16) List all products that are discontinued*/

/*
	(WHERE) Filters the results and only includes products where the discontinued column is equal to 1, indicating that they are discontinued
*/


SELECT p.product_id,p.product_name,p.discontinued
FROM products p
WHERE discontinued = 1;

