-- PL/pgsql

-- CREATE OR REPLACE FUNCTION fn_name(parameter para_type) RETURNS ret_type AS
-- $body
-- BEGIN 
-- statements

-- END
-- $body$
-- LANGUAGE plpqsql

---------------------------------------------------------------------------------------------------------------------
-- SELECT item.price
-- FROM item
-- NATURAL JOIN product
-- WHERE product.name = 'Grandview';

-- CREATE OR REPLACE FUNCTION fn_get_price_product_name(pName VARCHAR)
-- RETURNS NUMERIC AS
-- $body$
-- BEGIN 
-- 	RETURN item.price
-- 	FROM item
-- 	NATURAL JOIN product
-- 	WHERE product.name = pName;

-- END
-- $body$
-- LANGUAGE plpgsql

-- SELECT fn_get_price_product_name('Grandview')

-----------------------------------
-- Using variables inside functions

-- CREATE OR REPLACE FUNCTION fn_get_sum(val1 int, val2 int)
-- RETURNS INT AS
-- $body$
-- DECLARE
-- 	ans INT;
-- BEGIN
-- 	ans := val1 + val2;
-- 	RETURN ans;

-- END
-- $body$
-- LANGUAGE plpgsql

-- SELECT fn_get_sum(10,10);


-- SELECT (random());

-- CREATE OR REPLACE FUNCTION fn_get_random_value(min_val INT ,max_val INT )
-- RETURNS INT AS
-- $body$
-- DECLARE
-- 	rand INT;
-- BEGIN
-- -- 	SELECT random()*(max_val - min_val) + min_val INTO rand;
-- 	rand := random()*(max_val - min_val) + min_val;
-- 	RETURN rand;

-- END; 
-- $body$
-- LANGUAGE plpgsql

-- SELECT fn_get_random_value(10,10);

-- CREATE OR REPLACE FUNCTION fn_get_random_salesperson()
-- RETURNS VARCHAR AS
-- $body$
-- DECLARE 
-- 	rand INT;
-- 	emp RECORD;
-- BEGIN

-- 	rand := random() * (5-1) + 1;
-- 	SELECT *
-- 	FROM sales_person
-- 	INTO emp
-- 	WHERE id = rand;
-- 	RETURN CONCAT(emp.first_name ,' ',emp.last_name);

-- END 
-- $body$
-- LANGUAGE plpgsql

-- SELECT fn_get_random_salesperson();











