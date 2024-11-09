-- SELECT first_name, last_name
-- FROM Customer
-- WHERE first_name SIMILAR TO 'M%';


-- SELECT first_name, last_name
-- FROM Customer
-- WHERE first_name LIKE 'A_____'

-- SELECT first_name, last_name
-- FROM Customer
-- WHERE first_name LIKE 'D%' OR last_name SIMILAR TO '%n';

--------------------------------------------------------------------------
-- SELECT first_name, last_name
-- FROM Customer
-- WHERE first_name ~ '^Ma';

-- SELECT first_name, last_name
-- FROM Customer
-- WHERE last_name ~ 'ez$';

-- SELECT first_name, last_name
-- FROM Customer
-- WHERE last_name ~ 'ez|son';

SELECT first_name, last_name
FROM Customer
WHERE last_name ~ '[w-z]';





