-- CREATE OR REPLACE FUNCTION fn_log_distributor_name_change()
-- 	RETURNS TRIGGER
-- 	LANGUAGE PLPGSQL
-- AS
-- $body$
-- BEGIN
-- 	IF NEW.name <> OLD.name THEN
-- 		INSERT INTO distributor_audit
-- 		(dist_id, name,edit_date)
-- 		VALUES
-- 		(OLD.id , OLD.name, NOW());
-- 	END IF;
-- 	RAISE NOTICE 'Trigger name : %' , TG_NAME;
-- 	RAISE NOTICE 'Table name : %' , TG_TABLE_NAME;
-- 	RAISE NOTICE 'Operation name : %' , TG_OP;
-- 	RAISE NOTICE 'When executed : %' , TG_WHEN;
-- 	RAISE NOTICE 'Row or Statement : %' , TG_LEVEL;
-- 	RAISE NOTICE 'Table Schema : %' , TG_TABLE_SCHEMA;
-- 	RETURN NEW;
-- END;
-- $body$


-- CREATE TRIGGER tr_dist_name_changed
-- 	BEFORE UPDATE
-- 	ON distributor
-- 	FOR EACH ROW
-- 	EXECUTE PROCEDURE fn_log_distributor_name_change();
	


-----------------------------------------------------------------------------------------------------------------------
-- UPDATE distributor
-- SET name = 'Western demand'
-- WHERE id = 2;

-- SELECT * FROM distributor;

------------------------------------------------------------
-- CREATE OR REPLACE FUNCTION fn_block_weekend_changes()
-- 	RETURNS TRIGGER
-- 	LANGUAGE PLPGSQL
-- AS
-- $body$
-- BEGIN
-- 	RAISE NOTICE 'NO DATABASE CHANGE ALLOWED ON THE WEEKEND';
-- 	RETURN NULL;
-- END

-- $body$

-- CREATE TRIGGER tr_block_weekend_changes
-- 	BEFORE UPDATE OR INSERT OR DELETE OR TRUNCATE
-- 	ON distributor
-- 	FOR EACH STATEMENT
-- 	WHEN (
-- 		EXTRACT('DOW' FROM CURRENT_TIMESTAMP) BETWEEN 6 AND 7
-- 	)
-- 	EXECUTE PROCEDURE fn_block_weekend_changes();

-------------------------------------------------------------

-- DROP EVENT TRIGGER trigg   er_name;






