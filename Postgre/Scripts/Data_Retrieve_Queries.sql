-- SELECT * 
-- FROM sales_item
-- WHERE discount > .15;

-- SELECT time_order_taken
-- FROM sales_order
-- WHERE time_order_taken > '2018-12-01' AND time_order_taken < '2018-12-31';


-- You can use BETWEEN to get the same results
-- SELECT *
-- FROM sales_order
-- WHERE time_order_taken BETWEEN '2018-12-01' AND '2018-12-31';

-- ORDER BY determines which column is used to define the order of results. The default order is from low to high.

-- SELECT * 
-- FROM sales_item
-- WHERE discount > .15
-- ORDER BY discount; -- Ordered in asc order by default

-- SELECT * 
-- FROM sales_item
-- WHERE discount > .15
-- ORDER BY discount DESC;

-- LIMIT -> limits the number of rows in the result. Get just the top 5. You could use LIMIT 5, 10 to get the next 5
-- SELECT * 
-- FROM sales_item
-- WHERE discount > .15
-- ORDER BY discount DESC
-- LIMIT 7;

-- We can use CONCAT to merge to columns. We can then use AS to define a new column name.

-- SELECT CONCAT(first_name,' ',last_name) AS Name,phone,state
-- FROM Customer
-- WHERE state = 'TX';


-- SELECT product_id,SUM(price) as Total
-- FROM item
-- WHERE product_id = 1
-- GROUP BY product_id;


-- SELECT product_id,SUM(price) as Total
-- FROM item
-- GROUP BY product_id
-- ORDER BY product_id;


-- SELECT DISTINCT state
-- FROM Customer
-- ORDER BY state;

-- SELECT * 
-- FROM Customer
-- WHERE state IN ('CA','NJ');


---------------------------------------------------------------------------------------------------------------------------
-- JOINS

-- 1. INNER JOIN
-- SELECT item_id,price
-- FROM item INNER JOIN sales_item
-- ON item.id  = sales_item.item_id
-- ORDER BY item_id;

-- SELECT item_id, price 
-- FROM item INNER JOIN sales_item
-- ON item.id = sales_item.item_id AND price < 150.00
-- ORDER BY item_id;

-- Joining 3 tables
-- SELECT sales_order.id , sales_item.quantity , item.price,
-- (sales_item.quantity * item.price) AS Total
-- FROM sales_order
-- JOIN sales_item
-- ON sales_item.sales_order_id = sales_order.id
-- JOIN item
-- ON item.id = sales_item.item_id
-- ORDER BY sales_order.id;

-- You can also define the join conditions using WHERE, but this is not considered to be a best practice.
-- SELECT item_id , price
-- FROM item, sales_item
-- WHERE item.id = sales_item.item_id
-- AND price > 120.00
-- ORDER BY item_id;

