/*17) List all the distinct countries to which orders have been shipped*/

/*
	Query selects the ship_country column from the orders table and applies the DISTINCT keyword. 
	(DISTINCT) Eliminates duplicate values,so result will contain only distinct countries 
*/


SELECT DISTINCT ship_country
FROM orders;

