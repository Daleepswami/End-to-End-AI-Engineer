                
-- update:==>> UPDATE is used to change existing records in a database table.
     -- Basic Syntax
                 -- UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;
                 -- Example
                         UPDATE employee SET salary = 60000 WHERE id = 1;
       -- Without WHERE Clause:=> it is not useful because all data change 
                    UPDATE employee SET salary = 10000;     
                    
		-- Update Multiple Columns
                    UPDATE employee SET name = 'Aman', salary = 70000 WHERE id = 2;
		-- Update NULL Values 
        UPDATE employee SET salary = 30000 WHERE salary IS NULL;
