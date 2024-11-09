
-- Functions in SQL
-- Syntax
-- CREATE OR REPLACE FUNCTION function_name() RETURNS void AS 
-- '
-- SQL COMMANDS
-- '
-- LANGUAGE SQL

-- CREATE OR REPLACE FUNCTION fn_add_ints(int, int) 
-- RETURNS int AS
-- '
-- SELECT $1 + $2;
-- '
-- LANGUAGE SQL

-- BETTER WAY

-- CREATE OR REPLACE FUNCTION fn_add_ints(int, int) 
-- RETURNS int AS
-- $body$
-- SELECT $1 + $2;
-- $body$
-- LANGUAGE SQL


-- SELECT fn_add_ints(10,100) AS Answer;

-- CREATE OR REPLACE FUNCTION fn_update_employee_state()
-- RETURNS void AS
-- $body$
-- 	UPDATE sales_person
-- 	SET state = 'PA'
-- 	WHERE state IS NULL;
-- $body$
-- LANGUAGE SQL

-- SELECT fn_update_employee_state();

-- CREATE FUNCTION fn_max_product_price()
-- RETURNS numeric AS
-- $body$
-- 	SELECT MAX(price) 
-- 	FROM item
-- $body$
-- LANGUAGE SQL

-- SELECT fn_max_product_price();

-- CREATE FUNCTION fn_get_value_inventory()
-- RETURNS NUMERIC AS
-- $body$
-- 	SELECT SUM(price)
-- 	FROM item;
	
-- $body$
-- LANGUAGE SQL

-- SELECT fn_get_value_inventory();

-- CREATE FUNCTION fn_total_customers()
-- RETURNS NUMERIC AS
-- $body$
-- 	SELECT COUNT(*) 
-- 	FROM Customer;

-- $body$
-- LANGUAGE SQL

-- SELECT fn_total_customers();

-- CREATE OR REPLACE FUNCTION fn_number_customer_no_phone()
-- RETURNS NUMERIC AS
-- $body$
-- 	SELECT COUNT(*)
-- 	FROM Customer
-- 	WHERE phone IS NULL;
	

-- $body$
-- LANGUAGE SQL

-- SELECT fn_number_customer_no_phone();

-- CREATE OR REPLACE FUNCTION fn_get_number_customer_from_state(state_name CHAR(2))
-- RETURNS NUMERIC AS
-- $body$
-- 	SELECT COUNT(*)
-- 	FROM Customer
-- 	WHERE state = state_name;

-- $body$
-- LANGUAGE SQL

-- SELECT fn_get_number_customer_from_state('TX') AS Customer_from_texas
-- ,fn_get_number_customer_from_state('CA') AS Customer_from_California;


-- SELECT COUNT(*)
-- FROM sales_order
-- NATURAL JOIN customer
-- WHERE Customer.first_name = 'Christopher' AND Customer.last_name = 'Jones';

-- let's create function for above statement
-- CREATE OR REPLACE FUNCTION fn_get_number_orders_from_customer_state(first VARCHAR(30),last VARCHAR(30) )
-- RETURNS NUMERIC AS
-- $body$
-- 	SELECT COUNT(*)
-- 	FROM sales_order
-- 	NATURAL JOIN Customer
-- 	WHERE Customer.first_name = first AND Customer.last_name = last;

-- $body$
-- LANGUAGE SQL


SELECT fn_get_number_orders_from_customer_state('Christopher','Jones');








