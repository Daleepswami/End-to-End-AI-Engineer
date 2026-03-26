 -- delete::=>> DELETE is used to remove data from a database table.
                
       --  Basic Syntax::=>> DELETE FROM table_name WHERE condition;
       
       -- Basic Example
            DELETE FROM employee WHERE id = 1;
            
		-- DELETE Without WHERE::-- all data delete without where condition
          DELETE FROM employee;
          
		-- Delete Using IN and multiple row 
        DELETE FROM employee WHERE id IN (1, 2, 3);
