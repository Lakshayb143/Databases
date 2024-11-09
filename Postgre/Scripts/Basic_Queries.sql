-- For psql (command - line)
-- \c dbname => for connecting to another data base
-- \q => quitting the terminal
-- \dt => list all the tables in a database


-- Command for adding a column to a table
-- ALTER TABLE sales_item
-- ADD day_of_purchase VARCHAR(12) NOT NULL;

-- Modifying a Column 
-- ALTER TABLE sales_item
-- ALTER COLUMN day_of_purchase
-- SET DEFAULT 'MONDAY';

-- Changing the name of column
-- ALTER TABLE sales_item 
-- RENAME COLUMN day_of_purchase TO purchase_day;

-- Dropping a Column
-- ALTER TABLE sales_item
-- DROP COLUMN purchase_day;

-- SELECT * FROM sales_item;


-- --------------------------------------------------------------------------------------------------

-- Changing Table name 
-- ALTER TABLE transaction_type
-- RENAME TO transaction_details;


-- CREATE INDEX transaction_id ON transaction_details(name);


-- CREATE INDEX transaction_id_2 ON transaction_details(name, payment_type);

-- ---------------------------------------------------------------
-- FOR DELETING ALL THE DATA IN THE TABLE
-- TRUNCATE TABLE transaction_details;

-- REMOVING TABLE FROM DATABASE
-- DROP TABLE transaction_details;

-- INSERT INTO product_type(name) VALUES('Business');
-- INSERT INTO product_type(name) VALUES('Casual');
-- INSERT INTO product_type(name) VALUES('Athletic');
-- INSERT INTO product_type(name) VALUES('Business');
-- INSERT INTO product_type(name) VALUES('Athletic');
-- INSERT INTO product_type(name) VALUES('Sneakers');
-- INSERT INTO product_type(name) VALUES('Casual');
-- TRUNCATE TABLE product_type; -- THis will give error
-- TRUNCATE TABLE product_type CASCADE;
/* Now after truncate , if I re insert data
	 the id will continue from where it is left rather than 1.
	 to fix this 
	 */
-- Find out the current value of the sequence
-- SELECT setval('product_type_id_seq',1,true);

-- Set the sequence to start from 1
-- ALTER SEQUENCE product_type_id_seq RESTART WITH 1;




-- SELECT * FROM product_type;


ALTER TABLE Customer
ALTER COLUMN zip TYPE INTEGER;



