-- STORED PROCEDURES
-- CREATE OR REPLACE PROCEDURE procedure_name(parameters)
-- AS
-- $body$
-- DECLARE
-- BEGIN 
-- END;
-- $body$
-- LANGUAGE PLPGSQL

-- procedure with no parameters -> Static Stored procedures
-- procedure with parameters -> Dynamic Stored procedures

-----------------------------------------------------------------------------------------------------
-- CREATE TABLE past_due(
-- 	id SERIAL PRIMARY KEY,
-- 	cust_id INTEGER NOT NULL,
-- 	balance NUMERIC(6,2) NOT NULL
-- );


-- INSERT INTO past_due(cust_id, balance)
-- VALUES
-- (1, 123.45),
-- (2, 324.50);
----------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE pr_debt_paid(
	past_due_id INT , 
	payment NUMERIC, 
	INOUT msg VARCHAR
)
AS
$BODY$
DECLARE
BEGIN
	UPDATE past_due
	SET balance = balance - payment
	WHERE id = past_due_id;
	COMMIT;
	
END
$BODY$
LANGUAGE PLPGSQL;

-- CALL pr_debt_paid(1,100);

SELECT * FROM past_due
ORDER BY id;

