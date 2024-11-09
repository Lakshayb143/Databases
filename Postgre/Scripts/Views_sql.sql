-- CREATE VIEW purchase_order_overview AS
-- SELECT sales_order.purchase_order , customer.company,
-- sales_item.quantity, product.supplier , product.name , item.price,
-- (sales_item.quantity * item.price) AS Total,
-- CONCAT(sales_person.first_name , ' ', sales_person.last_name) AS sales_person
-- FROM sales_order
-- JOIN sales_item
-- ON sales_item.sales_order_id = sales_order.id
-- JOIN item
-- ON item.id = sales_item.item_id
-- JOIN Customer
-- ON sales_order.customer_id = customer.id
-- JOIN product
-- ON product.id = item.product_id
-- JOIN  sales_person
-- ON sales_person.id = sales_order.sales_person_id
-- ORDER BY purchase_order;

-- SELECT * FROM purchase_order_overview;

-- DROP VIEW purchase_order_overview;

-- CREATE VIEW purchase_order_overview_2 AS
-- SELECT sales_order.purchase_order , customer.company,
-- sales_item.quantity, product.supplier , product.name , item.price,
-- sales_person.first_name AS Salesperson
-- FROM sales_order
-- JOIN sales_item
-- ON sales_item.sales_order_id = sales_order.id
-- JOIN item
-- ON item.id = sales_item.item_id
-- JOIN Customer
-- ON sales_order.customer_id = customer.id
-- JOIN product
-- ON product.id = item.product_id
-- JOIN  sales_person
-- ON sales_person.id = sales_order.sales_person_id
-- ORDER BY purchase_order;

SELECT *, (quantity * price) AS Total
FROM purchase_order_overview_2;