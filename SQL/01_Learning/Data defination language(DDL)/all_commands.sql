-- DDL (Data Definition Language) in SQL
     -- DDL (Data Definition Language) is used to define and manage the structure of database objects such as tables, schemas, indexes, etc.
-- DDL Commands
-- 1. CREATE
        --  Used to create new database objects
-- Example:
          CREATE TABLE employee (
           id INT,
           name VARCHAR(50),
           salary INT
           );
-- 2. ALTER
        -- Used to modify an existing table

-- Examples:
-- (i) Add a new column
     ALTER TABLE employee
     ADD age INT;

-- (ii) Modify column datatype
      ALTER TABLE employee
      MODIFY salary DECIMAL(10,2);

--(iii) Drop a column
      ALTER TABLE employee
      DROP COLUMN age;

-- 3. DROP
        -- Used to delete entire table or database
        -- and drop the data and stucture of table and databases
-- Example:
       DROP TABLE employee;

-- 4. TRUNCATE
        -- Used to delete all records from a table (structure remains)
-- Example:
         TRUNCATE TABLE employee;

-- 5. RENAME
      -- Used to rename a table
-- Example:
        RENAME TABLE employee TO emp;










