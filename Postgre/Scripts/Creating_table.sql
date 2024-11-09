CREATE TABLE Customer(
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(60) NOT NULL,
company VARCHAR(60),
street VARCHAR(50) NOT NULL,
city VARCHAR(40) NOT NULL,
state VARCHAR(30) NOT NULL,
zip SMALLINT NOT NULL,
phone VARCHAR(20) NOT NULL,
dob DATE NULL,
sex CHAR(1) NOT NULL,
date_register TIMESTAMP NOT NULL,
id SERIAL PRIMARY KEY
);

-- Table: public.customer

-- DROP TABLE IF EXISTS public.customer;

-- CREATE TABLE IF NOT EXISTS public.customer
-- (
--     first_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
--     last_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
--     email character varying(60) COLLATE pg_catalog."default" NOT NULL,
--     company character varying(60) COLLATE pg_catalog."default",
--     street character varying(50) COLLATE pg_catalog."default" NOT NULL,
--     city character varying(40) COLLATE pg_catalog."default" NOT NULL,
--     state character varying(30) COLLATE pg_catalog."default" NOT NULL,
--     zip smallint NOT NULL,
--     phone character varying(20) COLLATE pg_catalog."default" NOT NULL,
--     dob date,
--     sex character(1) COLLATE pg_catalog."default" NOT NULL,
--     date_register timestamp without time zone NOT NULL,
--     id integer NOT NULL DEFAULT nextval('customer_id_seq'::regclass),
--     CONSTRAINT customer_pkey PRIMARY KEY (id)
-- )

-- TABLESPACE pg_default;

-- ALTER TABLE IF EXISTS public.customer
--     OWNER to postgres;