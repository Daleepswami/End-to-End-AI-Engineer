CASE is a conditional statement in SQL.
                              It works like IF–ELSE in programming.
It is used to:
               Apply conditions inside a query
               Return different values based on conditions
               Modify the output while retrieving data
               CASE is mostly used inside the SELECT statement.
Syntax::-->> 
             CASE
                  WHEN condition THEN result
                  WHEN condition THEN result
                  ELSE result
              END
EXAMPLE:->>


Q.01 Display student name and assign grades based on marks:
        Marks ≥ 80 → 'A'
        Marks ≥ 60 → 'B'
        Marks ≥ 40 → 'C'
        Otherwise → 'Fail'
==>> 

SELECT name, marks,
CASE
    WHEN marks >= 80 THEN 'A'
    WHEN marks >= 60 THEN 'B'
    WHEN marks >= 40 THEN 'C'
    ELSE 'Fail'
END AS grade
FROM student;


Q.02 Show employee name and classify salary:
    Salary > 50000 → 'High'
    Otherwise → 'Low'

==>> 
SELECT name, salary,
CASE
    WHEN salary > 50000 THEN 'High'
    ELSE 'Low'
END AS salary_status
FROM employee;


Q.03 Display employee name and department type:
    IT → 'Technical'
    HR → 'Management'
    Others → 'Other'
==>>

SELECT name,
CASE department
    WHEN 'IT' THEN 'Technical'
    WHEN 'HR' THEN 'Management'
    ELSE 'Other'
END AS dept_type
FROM employee;

Q.04 Count how many students passed and failed.
    (Pass if marks ≥ 50)

==>> 
SELECT
CASE
    WHEN marks >= 50 THEN 'Pass'
    ELSE 'Fail'
END AS result,
COUNT(*) AS total_students
FROM student
GROUP BY result;
