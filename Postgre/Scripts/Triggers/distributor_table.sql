-- CREATE TABLE distributor(
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR NOT NULL
	
-- );

-- INSERT INTO distributor (name)
-- VALUES
-- ('Parawholesale'),
-- ('J & B Sales'),
-- ('Steel City Clothing');

CREATE TABLE distributor_audit
(
	dist_id INTEGER NOT NULL,
	name VARCHAR NOT NULL,
	edit_date TIMESTAMP NOT NULL,
	id SERIAL PRIMARY KEY
);