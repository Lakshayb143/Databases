-- TRIGGERS
CREATE FUNCTION trigger_fn()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$BODY$
BEGIN 
END;
$BODY$

CREATE TRIGGER trigger_name
	{BEFORE | AFTER} {event} -- Event : insert, update, truncate
ON table_name
	[FOR [EACH] {ROW | STATEMENT}]
		EXECUTE PROCEDURE trigger_fn