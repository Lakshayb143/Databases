DO 
$body$
	DECLARE
		j INT DEFAULT 1;
		tSum INT DEFAULT 0;
	
	BEGIN 
		WHILE j <= 10
		LOOP
			tSum := tSum + j;
			j := j + 1;
		END LOOP;
	
		RAISE NOTICE '%',tSum;
	
	END;
$body$
LANGUAGE plpgsql

-- CONTINUE WHEN MOD(i,2) = 0