

-- CASE STATEMENT::==>>
-- CASE is a conditional statement in SQL.
					-- It works like IF–ELSE in programming.
-- It is used to:
--             Apply conditions inside a query
--                Return different values based on conditions
--                Modify the output while retrieving data
--                CASE is mostly used inside the SELECT statement.

/* select column 
case 
      when condition then expression
	  when condition then expression
      when condition then expression
      else expression
end from table */

-- Syntax::-->> 
          --    CASE
--                   WHEN condition THEN result
--                   WHEN condition THEN result
--                   ELSE result
--               END from table_name;

case
    when population>25000 then " very large populaton"
    when population>22000 then "large populaton"
    when population>20000 then "medium populaton"
    else 'normal population' 
end as populaton_description from country;


--  select name continent population if indepyear is from 1600 to 1850 early indepyear if indepyear is from 1851 to 1900 notmal indepyear
-- if indepyear is even year indep  early indepyear 
--  and else late / early independant

select name ,indepyear,
case 
    when indepyear between 1600 and 1850 and indepyear%2=0 then " even early independent"
	when indepyear between 1600 and 1850 then "early independent"
    when indepyear between 1851 and 1900 then "normal independent"
    else  'late / early independant'
end as populaton_description from country;






-- Q.01 Display student name and assign grades based on marks:
      --   Marks ≥ 80 → 'A'
--         Marks ≥ 60 → 'B'
--         Marks ≥ 40 → 'C'
--         Otherwise → 'Fail'


SELECT name, marks,
CASE
    WHEN marks >= 80 THEN 'A'
    WHEN marks >= 60 THEN 'B'
    WHEN marks >= 40 THEN 'C'
    ELSE 'Fail'
END AS grade
FROM student;


-- Q.02 Show employee name and classify salary:
--     Salary > 50000 → 'High'
--     Otherwise → 'Low'

-- ==>> 
SELECT name, salary,
CASE
    WHEN salary > 50000 THEN 'High'
    ELSE 'Low'
END AS salary_status
FROM employee;


-- Q.03 Display employee name and department type:
--     IT → 'Technical'
--     HR → 'Management'
--     Others → 'Other'
-- ==>>

SELECT name,
CASE department
    WHEN 'IT' THEN 'Technical'
    WHEN 'HR' THEN 'Management'
    ELSE 'Other'
END AS dept_type
FROM employee;

-- Q.04 Count how many students passed and failed.
--     (Pass if marks ≥ 50)

-- ==>> 
SELECT
CASE
    WHEN marks >= 50 THEN 'Pass'
    ELSE 'Fail'
END AS result,
COUNT(*) AS total_students
FROM student
GROUP BY result;
    
