--  CTE: cte stands foe comman table expression
   -- 1. this is temporary result which can be use within one sql query statement 
   -- 2. It is mainly use to get code readability
   -- 3. it will make complex query easy
   -- 4. CTE can be used  N number of  times
   -- 5. CTE can be used till query  executation after the query executation
           -- CTE are autometically remove
           
-- syntax::==>> with  new_table_name as 
-- 				(  all query )


-- Example ::=>
         with test as
         (select   dept,avg(salary) as avgSalary from employee
         group by dept)
         select e.name,e.salary,e.dept,test.avgSalary from employee as e 
                       join test where e.dept=test.dept and e.salary>test.avgSalary;
