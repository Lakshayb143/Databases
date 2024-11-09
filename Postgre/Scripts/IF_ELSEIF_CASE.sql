-- CREATE OR REPLACE FUNCTION fn_check_month_orders(mon INT)
-- RETURNS VARCHAR AS
-- $body$
-- DECLARE 
-- 	total_orders INT;
-- BEGIN 
-- 	SELECT COUNT(purchase_order)
-- 	INTO total_orders
-- 	FROM sales_order
-- 	WHERE EXTRACT(MONTH FROM time_order_taken) = mon;
-- 	IF total_orders > 5 THEN
-- 		RETURN CONCAT(total_orders,' ' ,' ORDERS : DOING GOOD');
-- 	ELSEIF total_orders < 5 THEN
-- 		RETURN CONCAT(total_orders,' ' , ' ORDERS : DOING BAD');
-- 	ELSE
-- 		RETURN CONCAT(total_orders,' ' , ' ORDERS : ON TARGET');
-- 	END IF;


-- END 
-- $body$
-- LANGUAGE plpgsql

-- SELECT fn_check_month_orders(12);


--------------------------------------------------------------------------
-- executing above function using CASE

-- CREATE OR REPLACE FUNCTION fn_check_month_orders_case(mon INT)
-- RETURNS VARCHAR AS
-- $body$
-- DECLARE
-- 	total_orders INT;
-- BEGIN 
-- 	SELECT COUNT(purchase_order_number)
-- 	INTO total_orders
-- 	FROM sales_order
-- 	WHERE EXTRACT(MONTH FROM time_order_taken) = mon;
	
-- 	CASE
-- 		WHEN total_orders < 1 THEN
-- 			RETURN CONCAT(total_orders, ' ', 'ORDERS : Teribble');
-- 		WHEN total_orders > 1 AND total_orders < 5 THEN
-- 			RETURN CONCAT(total_orders,' ', 'ORDERS : On Target');
-- 		ELSE
-- 			RETURN CONCAT(total_orders,' ', 'ORDERS : Doing Good');
	
-- 	END CASE;

-- END 
-- $body$
-- LANGUAGE plpgsql




















