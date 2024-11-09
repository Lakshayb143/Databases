-- SELECT name , supplier,price
-- FROM product LEFT JOIN item
-- ON item.product_id = product.id
-- ORDER BY name;

-- SELECT sales_order_id, quantity, product_id
-- FROM item CROSS JOIN sales_item
-- ORDER BY sales_order_id;


--- UNION
-- Unions combine the results of 2 or more select statements in one result. 
-- Each result must return the same number of columns and data in each column must have the same data type.

-- SELECT first_name, last_name, street, city, zip, dob
-- FROM Customer
-- WHERE EXTRACT(MONTH FROM dob) = 12
-- UNION
-- SELECT first_name, last_name, street, city, zip, dob
-- FROM sales_person
-- WHERE EXTRACT(MONTH FROM dob) = 12
-- ORDER BY dob;

-- SELECT * 
-- FROM item
-- WHERE price = NULL;

-- SELECT * 
-- FROM item
-- WHERE price IS NULL;

SELECT * 
FROM item
WHERE price IS NOT NULL;

