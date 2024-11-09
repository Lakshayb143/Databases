-- FOREACH var IN ARRAY array_name

DO 
$body$
	DECLARE
		arr int[] = array[1,2,3,4,5];
		i INT;
	BEGIN
		FOREACH i IN ARRAY arr
		LOOP
			RAISE NOTICE '%',i;
		
		END LOOP;
	END;
$body$
LANGUAGE plpgsql