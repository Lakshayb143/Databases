-- CURSORS
DO
$body$
	DECLARE
		msg TEXT DEFAULT '';
		rec_cust RECORD;
		cur_cust CURSOR
		FOR
			SELECT * FROM customer;
		BEGIN
			OPEN cur_cust;
			LOOP
				FETCH cur_cust INTO rec_cust;
				EXIT WHEN NOT FOUND;
				msg := msg || rec_cust.first_name || ' ' || rec_cust.last_name || ',';
			
			END LOOP;
			RAISE NOTICE 'CUSTOMERS : %', msg;
		END;
$body$ 