HAVING::->> 
  -- Having clause which use to filter the based on aggragate function
  -- Having clause are always use with group by statements
  -- Havig clause are use after the gru=oup by statement

Q.01  Show the departments that have more than 5 employees.
  SELECT dept, COUNT(*) AS total_employees FROM employees GROUP BY dept HAVING COUNT(*) > 5;

Q.02   Display the departments where the average salary is greater than 40,000.
   SELECT dept, AVG(salary) AS avg_salary FROM employees GROUP BY dept HAVING AVG(salary) > 40000;
Q.03   List the departments whose total salary is more than 200,000.
   SELECT dept, SUM(salary) AS total_salary FROM employees GROUP BY dept HAVING SUM(salary) > 200000;
Q.04  Find the departments where the minimum salary is less than 25,000.
   SELECT dept, MIN(salary) AS min_salary FROM employees GROUP BY dept HAVING MIN(salary) < 25000;
Q.05  Show the departments that have at least 3 employees, and an average salary greater than 50,000.
    SELECT dept, COUNT(*) AS emp_count, AVG(salary) AS avg_salary FROM employees GROUP BY dept
    HAVING COUNT(*) >= 3 AND AVG(salary) > 50000;
