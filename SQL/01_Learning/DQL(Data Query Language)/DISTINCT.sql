-- DISTINCT ::==>> DISTINCT removes duplicate rows from the result set.
-- 01 distinct
select distinct amount from payment;
select distinct customer_id ,amount from payment;

-- we are not use the column before the distinct function
-- combination of two columns use (like:-->> ( dictinct column01, column02) ) posible
-- combination of two columns use (like:-->> ( column01 dictinct  column02) ) not posible

-- 01.Single column se unique values
SELECT DISTINCT city FROM students;
-- 02. Multiple columns par DISTINCT
SELECT DISTINCT city, age FROM students;
-- 03 DISTINCT with COUNT (very common)
SELECT COUNT(DISTINCT city) FROM students;
-- 04 DISTINCT with WHERE
SELECT DISTINCT department
FROM employees
WHERE salary > 50000;
 -- 05. DISTINCT with ORDER BY
SELECT DISTINCT city
FROM students
ORDER BY city

 
