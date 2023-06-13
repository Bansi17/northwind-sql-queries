/*29) Find the month in the year 2016 with the highest total sales*/


/*
	WHERE Filters the orders based on the year 2016. 
	GROUP BY Groups the orders by the order_date
	LIMIT 1 Ensures that only the highest total sales record is returned.

*/


SELECT order_date,Total_sales
FROM (
SELECT orders.order_date,
    SUM(products.unit_price * order_details.Quantity * (1 - order_details.Discount)) AS Total_sales
FROM Orders
      JOIN order_details ON orders.order_ID = Order_Details.Order_ID
      JOIN products ON products.Product_ID = order_details.Product_ID
WHERE YEAR(Order_Date) = 2016
GROUP BY orders.order_date) AS Monthly_sales
ORDER BY Total_sales DESC
LIMIT 1;
