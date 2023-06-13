/*37) products based on their sales volume such that TotalQuantity > 1000 Then Classify SalesCategory as ‘High Sales’. If TotalQuantity>500 Then ‘Medium Sales’ and else ‘Lower Sales’*/


/*
	The CASE statement evaluates the total_quantity and assigns the appropriate sales_category
	 If the total_quantity is greater than 1000, it is classified as High Sales
	If the total_quantity is greater than 500, but not greater than 1000, it is classified as Medium Sales
	If the total_quantity does not meet the above conditions, it is classified as 'Lower Sales

*/


SELECT  p.product_name,
    product_sales.total_quantity,
    CASE
        WHEN product_sales.total_quantity > 1000 THEN 'High Sales'
        WHEN product_sales.total_quantity > 500 THEN 'Medium Sales'
        ELSE 'Lower Sales'
    END AS sales_category
FROM products p
JOIN ( SELECT   product_id,
        SUM(quantity) AS total_quantity
    FROM  order_details
    GROUP BY  product_id  ) AS product_sales
ON
    p.product_id = product_sales.product_id;
