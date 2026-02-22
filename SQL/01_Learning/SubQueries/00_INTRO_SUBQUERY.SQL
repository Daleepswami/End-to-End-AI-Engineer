subquery :==> subquery is with in query is called subquery and it is also called nested Query 
              it is used to perform to calculations  based on related table
              and used to perform calculation based on dyanmic condition
      
subquery have  two part :=>> 1. outer query 
							--  2. inner query
							-- 	outer query    (  inner query query )
                                               --     ^
										    -- this is are solve the first 


  Types of subQuery:-->
                        01. Single Row Subquery
                        02. Multi  Row Subquery
                        03.Correlated Subquery
                        04. Nested Subquery

Q.01 Find students who scored more than the average marks

SELECT name
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);


Q.02 Find employees who work in the 'HR' department.
SELECT name
FROM employee
WHERE dept_id = (
    SELECT dept_id
    FROM department
    WHERE dept_name = 'HR'
);
