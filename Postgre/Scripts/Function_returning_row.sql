
-- Composite -> Functions returning row

-- CREATE OR REPLACE FUNCTION fn_get_last_order()
-- RETURNS sales_order AS
-- $body$
-- 	SELECT *
-- 	FROM sales_order
-- 	ORDER BY time_order_taken DESC
-- 	LIMIT 1;

-- $body$
-- LANGUAGE SQL

-- SELECT fn_get_last_order(); -- This combines all the data

-- SELECT (fn_get_last_order()).*;
-- -- or we can get a specific columns also
-- SELECT (fn_get_last_order()).credit_card_number;


-- SELECT *
-- FROM sales_person
-- WHERE state = 'CA';

-- CREATE OR REPLACE FUNCTION fn_get_employee_location(loc VARCHAR)
-- RETURNS SETOF sales_person AS
-- $body$
-- 	SELECT *
-- 	FROM sales_person
-- 	WHERE state = loc;


-- $body$
-- LANGUAGE SQL


-- SELECT (fn_get_employee_location('CA')).*;

-- ALSO
SELECT first_name , email
FROM fn_get_employee_location('CA');











