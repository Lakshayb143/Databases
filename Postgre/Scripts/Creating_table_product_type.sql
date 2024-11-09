
-- DROP TABLE IF EXISTS product_type;

-- CREATE TABLE product_type(
-- name VARCHAR(30) NOT NULL,
-- id SERIAL PRIMARY KEY
-- );

-- CREATE TABLE product(
-- type_id INTEGER REFERENCES product_type(id),
-- name VARCHAR(30) NOT NULL,
-- supplier VARCHAR(30) NOT NULL,
-- description TEXT NOT NULL,
-- id SERIAL PRIMARY KEY
-- );

-- CREATE TABLE Item(
-- 	product_id INTEGER REFERENCES product(id),
-- 	size INTEGER NOT NULL,
-- 	color VARCHAR(30) NOT NULL,
-- 	picture VARCHAR(256) NOT NULL,
-- 	price NUMERIC(6,2) NOT NULL,
-- 	id SERIAL PRIMARY KEY
	
-- );

-- CREATE TABLE sales_order(
-- 	customer_id INTEGER REFERENCES Customer(id),
-- 	sales_person_id INTEGER REFERENCES sales_person(id),
-- 	time_order_taken TIMESTAMP NOT NULL,
-- 	purchase_order INTEGER NOT NULL,
-- 	credit_card_number VARCHAR(16) NOT NULL,
-- 	credit_card_exp_month SMALLINT NOT NULL,
-- 	credit_card_exp_day SMALLINT NOT NULL,
-- 	credit_card_code SMALLINT NOT NULL,
-- 	name_on_card VARCHAR(100) NOT NULL,
-- 	id SERIAL PRIMARY KEY
-- );

CREATE TABLE transaction_type(
name VARCHAR(30) NOT NULL,
payment_type VARCHAR(30) NOT NULL,
id SERIAL PRIMARY KEY);

   
