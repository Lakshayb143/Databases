

-- CREATE OR REPLACE FUNCTION fn_get_add(IN v1 INT, IN v2 INT, OUT ans INT)
-- AS
-- $body$
-- BEGIN

-- 	ans := v1 + v2;

-- END
-- $body$
-- LANGUAGE plpgsql

-- SELECT fn_get_add(10,100);

-- CREATE OR REPLACE FUNCTION fn_get_customer_bday(IN the_month INT, OUT bd_month INT, OUT bd_day INT,
-- 												OUT f_name VARCHAR, OUT l_name VARCHAR)
-- AS
-- $body$
-- BEGIN 
-- 	SELECT EXTRACT(MONTH FROM dob), EXTRACT(DAY FROM dob), 
-- 	first_name , last_name
-- 	INTO bd_month, bd_day, f_name , l_name
-- 	FROM Customer
-- 	WHERE EXTRACT(MONTH FROM dob) = the_month
-- 	LIMIT 1;
-- END
-- $body$
-- LANGUAGE plpgsql



-- SELECT (fn_get_customer_bday(12)).*;

-- CREATE OR REPLACE FUNCTION fn_get_sales_people()
-- RETURNS SETOF sales_person AS
-- $body$
-- BEGIN
-- 	RETURN QUERY
-- 	SELECT *
-- 	FROM sales_person;

-- END
-- $body$
-- LANGUAGE plpgsql



-- SELECT (fn_get_sales_people()).*;


-- CREATE OR REPLACE FUNCTION fn_get_top_10()
-- RETURNS TABLE(
-- 	name VARCHAR,
-- 	supplier VARCHAR,
-- 	price NUMERIC
-- ) AS
-- $body$
-- BEGIN
-- 	RETURN QUERY
-- 	SELECT product.name, product.supplier, item.price
-- 	FROM item
-- 	NATURAL JOIN product
-- 	ORDER BY item.price DESC
-- 	LIMIT 10;

-- END
-- $body$
-- LANGUAGE plpgsql

-- SELECT (fn_get_top_10()).*;


































