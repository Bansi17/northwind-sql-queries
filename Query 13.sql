/*13) List all orders shipped to ‘Germany’*/

/*
	It retrieves all the orders that were shipped to Germany along with the order.id, order.date, order.ship_country, order.shipped_date
*/


SELECT 
o.order_id,o.order_date,o.ship_country,o.shipped_date
FROM orders o
WHERE ship_country = 'Germany';

