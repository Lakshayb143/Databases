
-- CREATE OR REPLACE FUNCTION fn_loop_test(max_num INT)
-- RETURNS INT AS
-- $body$
-- DECLARE 
-- 	j INT DEFAULT 1;
-- 	tSum INT DEFAULT 0;
	
-- BEGIN

-- 	LOOP 
-- 		tSum := tSum + j;
-- 		j := j + 1;
		
-- 		EXIT WHEN j > max_num;
	
-- 	END LOOP;
-- 	RETURN tSum;


-- END
-- $body$
-- LANGUAGE plpgsql


-- SELECT fn_loop_test(10);
------------------------------------------------------------------------------------------------------------------------
/*

FOR counter IN start_value .. end_value BY Stepping
LOOP
	statements

END LOOP;

*/

-- CREATE OR REPLACE FUNCTION fn_for_loop(iMax INT)
-- RETURNS INT AS
-- $body$
-- DECLARE
-- 	tSum INT DEFAULT 0;
-- BEGIN 
-- 	FOR i IN 1.. iMax BY 2
-- 	LOOP
-- 		tSum := tSum + i;
-- 	END LOOP;
-- 	RETURN tSum;

-- END
-- $body$
-- LANGUAGE plpgsql
	

-- SELECT fn_for_loop(10);

CREATE OR REPLACE FUNCTION fn_for_loop_reverse(iMax INT)
RETURNS INT AS
$body$
DECLARE
	tSum INT DEFAULT 0;
BEGIN 
	FOR i IN REVERSE iMax .. 1 BY 2
	LOOP
		tSum := tSum + i;
	END LOOP;
	RETURN tSum;

END
$body$
LANGUAGE plpgsql













