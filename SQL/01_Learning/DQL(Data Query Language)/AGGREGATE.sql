-- Aggregate functions perform calculation on multiple rows and return a single value.
-- some aggregate function in SQL 
-- 01. COUNT()::=>> counts number od rows
use sakila;
select count(*) from payment;

select count(payment_id) from payment;
select count(customer_id) from payment;


-- 02 sum()::=>> Adds total of a numeric column
select sum(amount) from payment;
SELECT SUM(salary) FROM employees;
select sum(course_fees) from collage;

-- 03 AVG()::=>> returns average values
select avg(marks) from student;
select avg(salary) from payment;
select avg(amount) from payment;

-- 04.min()::=>> Returns smallest values
select min(marks) from student;
select min(salary) from payment;
select min(amount) from payment;

-- 05.max()::=>> Returns Largest values
select max(marks) from student;
select max(salary) from payment;
select max(amount) from payment;





