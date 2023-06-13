/*1) Get the total number of orders placed by each customer*/

/*
(JOIN) Joins the customers and orders tables based on the condition customer_id 
(GROUP BY)  Groups the result by customer_id and company_name
(COUNT) Counts the no. of occurrences of the order_id column in the orders table
*/


SELECT customers.customer_id,
customers.company_name,
COUNT(orders.order_id) AS total_orders
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.company_name;
