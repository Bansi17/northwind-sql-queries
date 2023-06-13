/*23) Find the most common shipping country*/

/*
	COUNT() Counts the occurences of each unique shipping country
	(ORDER BY) sort the results in descending order based on the count of shipping occurrences
	(LIMIT) Used to retrieve only the top 1 row, which represents the most common shipping country
*/


SELECT ship_country, COUNT(*) AS shipping_count
FROM orders
GROUP BY ship_country
ORDER BY shipping_count DESC
LIMIT 1;

