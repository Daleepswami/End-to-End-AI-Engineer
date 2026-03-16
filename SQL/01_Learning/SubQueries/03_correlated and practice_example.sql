-- correlated subquery :=>. correlated subquery is type of sub query 
                     --  which is excuted again and again for each row of  outer query
create database regex2;
use regex2;
CREATE TABLE employee (
    eid INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(50),
    salary DECIMAL(10,2)
);


INSERT INTO employee (eid, name, dept, salary) VALUES
(101, 'Amit', 'HR', 40000),
(102, 'Neha', 'HR', 45000),
(103, 'Raj', 'IT', 60000),
(104, 'Priya', 'IT', 75000),
(105, 'Suresh', 'IT', 50000),
(106, 'Anita', 'Finance', 55000),
(107, 'Vikram', 'Finance', 65000),
(108, 'Kavita', 'Finance', 48000),
(109, 'Rohit', 'Marketing', 52000),
(110, 'Sneha', 'Marketing', 58000);

select * from employee;

select * from employee as em where salary > (select avg(salary) from employee where dept=em.dept);

-- Q.01 highest paid employees in each department
select * from employee as em where salary = (select max(salary) from employee where dept=em.dept);
-- Q.02 lowest paid employees in each department
select * from employee as em where salary = (select min(salary) from employee where dept=em.dept);

-- Q.03 employees who earn more than at least one employee in their department 
select * from employee as em where salary>any (select (salary) from employee where dept=em.dept);
-- Q.04 employees earning more than all other in their department
SELECT *
FROM employee e WHERE salary > ALL (
    SELECT salary
    FROM employee
    WHERE dept = e.dept 
      AND name <> e.name
);


-- more example
use world;
select  * from city;
select * from country;

-- show cities whose population is higher than 
-- average city population of own country

select * from city as ct where population >(select avg(population) from city where countrycode=ct.countrycode);

-- find cities that have the maximam populatoin within their country
select * from city as ct where population=(select max(population) from city where countrycode=ct.countrycode);


-- find all cities and countryname whose population is greater than 
-- the average population of cities in the same country
select * from city as ct where population>=(select avg(population) from city where countrycode=ct.countrycode)


