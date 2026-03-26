-- DML::==>> 
         -- DML stands for Data Manipulation Language, 
         -- refers to SQL commands used to manipulate data within database tables,
         -- such as inserting, updating, deleting, or retrieving records.
         
-- Main Commands
  -- 1. insert
  -- 2. update
  -- 3. delete
  -- 4. merge
  
  -- 1. INSERT: Adds new rows into a table
-- Basic Syntax::=>> INSERT INTO table_name (column1, column2, column3) VALUES (value1, value2, value3);

        -- singal row insert:==>
               use regex;
               describe employee;
			   INSERT INTO employee (emp_id,emp_name,job_title,manager_id,salary)VALUES (1, 'Aman', 'HR',101,50000);



        -- multi-row insert:==>
                INSERT INTO employee (emp_id,emp_name,job_title,manager_id,salary)VALUES 
                                     (2, 'ram', 'HR',102,50000),
                                     (3, 'ramesh', 'HR',104,40000);

        -- insert the specific column in table
                INSERT INTO employee (emp_id,emp_name,salary) VALUES 
                                     (4, 'rakesh',70000),
                                     (7, 'ramesh',60000);

        -- Insert NULL Values
                INSERT INTO employee (id, name, salary) VALUES (8, 'Rohit', NULL);

		-- Insert Date Values::=>
				INSERT INTO orders (order_date) VALUES ('2026-03-26');
