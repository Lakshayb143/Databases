-- CREATE OR REPLACE FUNCTION fn_get_customer_by_state(c_state VARCHAR)
-- RETURNS text 
-- LANGUAGE PLPGSQL
-- AS
-- $body$
-- DECLARE
-- 	cust_names TEXT DEFAULT '';
-- 	rec_cust RECORD;
-- 	cur_cust CURSOR (c_state VARCHAR)
-- 	FOR 
-- 		SELECT first_name, last_name,state
-- 		FROM Customer
-- 		WHERE state = c_state;
-- 	BEGIN
-- 		OPEN cur_cust(c_state);
-- 		LOOP
-- 			FETCH cur_cust INTO rec_cust;
-- 			EXIT WHEN NOT FOUND;
-- 			cust_names := cust_names || ' ' || rec_cust.first_name || ' ' || rec_cust.last_name || ', ';
		
-- 		END LOOP;
-- 		CLOSE cur_cust;
-- 		RETURN cust_names;
		
	
-- 	END;
-- $body$

SELECT fn_get_customer_by_state('CA');