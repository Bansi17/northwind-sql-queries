/*2) Find all suppliers who provide products in the ‘Seafood’ category*/

/*
	(SELECT) Selects the supplier_id and category_name from thesuppliers table
	(JOIN) Joins the products table on the supplier_id column and the categorie table on the category_id column
	(WHERE) Filters the results to only include suppliers whose products are in the Seafood category
*/

SELECT suppliers.supplier_id, categories.category_name
FROM suppliers
JOIN products ON suppliers.supplier_id = products.supplier_id
JOIN categories ON products.category_id = categories.category_id
WHERE categories.category_name = "Seafood"

