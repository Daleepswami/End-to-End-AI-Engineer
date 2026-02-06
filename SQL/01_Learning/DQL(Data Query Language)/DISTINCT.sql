-- DISTINCT ::==>> DISTINCT removes duplicate rows from the result set.

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

 