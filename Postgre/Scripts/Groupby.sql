-- SELECT EXTRACT(MONTH FROM dob) AS Month , COUNT(*) AS Total
-- FROM Customer
-- GROUP BY Month
-- ORDER BY Month;


-- SELECT EXTRACT(MONTH FROM dob) AS Month , COUNT(*) AS Total
-- FROM Customer
-- GROUP BY Month
-- HAVING COUNT(*) > 2
-- ORDER BY Month;

-- Aggregate Functions

-- SELECT SUM(price) AS Total
-- FROM item
-- GROUP BY product_id;

SELECT COUNT(*) AS Items , SUM(price) AS VAlue, ROUND(AVG(price),2) AS Average, MIN(price) as Min , MAX(price) as Max
FROM item;










