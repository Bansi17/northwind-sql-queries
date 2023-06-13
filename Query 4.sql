/*4) Find the total sales (Quantity*Unit_Price) for each category of products*/

/*
	(Total Sales) Calculates the total sales for each category by multiplying the quantity from the order_details table with the unit price from the products table.
	(GROUP BY) groups the result by the categories.category_name column to calculate the total sales
*/


SELECT categories.category_name,
SUM(order_details.quantity * products.unit_price) AS total_sales
FROM products
JOIN categories ON products.category_id = categories.category_id
JOIN order_details ON products.product_id = order_details.product_id
GROUP BY categories.category_name;



