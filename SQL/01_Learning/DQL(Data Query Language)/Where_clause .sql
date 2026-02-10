Where clause ::=>>  WHERE clause is used to filter rows based on a condition.
      -- where clause use before group by statement 
      -- where clause are apply on column already Exist in table 
      -- where clause gennally are not use aggragate function
      -- WHERE cannot be used with aggregate functions like COUNT, SUM, AVG.
      -- It can be used with comparison, logical and pattern operators.
      -- WHERE reduces the number of rows before grouping

Ex.::=>>
 Q.01  Show departments where employees have salary greater than 30,000
and the department has more than 3 employees.

SELECT dept, COUNT(*) AS emp_count
FROM employees
WHERE salary > 30000
GROUP BY dept
HAVING COUNT(*) > 3;

Q.02 Display all employees whose salary is greater than 30,000.

SELECT *
FROM employees
WHERE salary > 30000;

Q. 03 Show employees who belong to the IT department.

SELECT *
FROM employees
WHERE dept = 'IT';

Q.04 List employees whose salary is between 25,000 and 50,000.

SELECT *
FROM employees
WHERE salary BETWEEN 25000 AND 50000;

Q.05 Display employees whose name starts with the letter 'A'.

SELECT *
FROM employees
WHERE emp_name LIKE 'A%';
