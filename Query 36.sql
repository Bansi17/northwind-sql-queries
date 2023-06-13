/*36) Classify customers based on their total order amounts such that total order amounts > 5000 should be classified as ‘High Value’, if > 1000 then as ‘Medium Value’ and otherwise as ‘Low Value’*/

/*
	(CASE) statement evaluates the total_order_amount and assigns the appropriate classification
	If the total_order_amount is greater than 5000, it is classified as'High Value
	If the total_order_amount is greater than 1000, but not greater than 5000, it is classified as Medium Value
	If the total_order_amount does not meet the above conditions, it is classified as Low Value
	

*/

SELECT c.company_name,TotalOrderAmount,
 CASE
 WHEN TotalOrderAmount > 5000 THEN 'High Value'
 WHEN TotalOrderAmount > 1000 THEN 'Medium Value'
 ELSE 'Low Value'
 END AS CustomerClass
FROM (
SELECT o.customer_id,
 SUM(od.quantity) AS TotalOrderAmount
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY o.customer_id
) AS customer_orders
JOIN customers c ON customer_orders.customer_id = c.customer_id;
