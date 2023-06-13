/*38) Classify employees based on the number of orders they have processed such that NumberOfOrders > 100 Then PerformanceCategory as ‘High Performing’. If NumberOfOrders>50 Then ‘Medium Performing’ and else ‘Lower Performing’*/


/*
	The CASE statement evaluates the NumberOfOrders and assigns the appropriate PerformanceCategory
	 If the NumberOfOrders is greater than 100, it is classified as High Performing
	If the NumberOfOrders is greater than 50, but not greater than 100, it is classified as Medium Performing
	If the NumberOfOrders does not meet the above conditions, it is classified as Lower Performing
*/


SELECT
    e.first_name,
    e.last_name,
    order_counts.NumberOfOrders,
    CASE
        WHEN order_counts.NumberOfOrders > 100 THEN 'High Performing'
        WHEN order_counts.NumberOfOrders > 50 THEN 'Medium Performing'
        ELSE 'Lower Performing'
    END AS PerformanceCategory
FROM ( SELECT employee_id,
        COUNT(*) AS NumberOfOrders
    FROM orders
    GROUP BY employee_id
) AS order_counts
JOIN employees e ON e.employee_id = order_counts.employee_id;
