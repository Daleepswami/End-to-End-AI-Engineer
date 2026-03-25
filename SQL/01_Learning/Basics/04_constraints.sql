   -- constraints :-- constraint are the set of rules that are applied on the table column 
				   --  to avoid invaild data entry 
                   -- to ensure data integrity
  
  
  -- 01. not null::--  : Ensures that a column cannot store NULL values.
                      -- This is essential for fields that must always contain information
  
  create table test1000(salary int not null,age int);
  insert into test1000 values(100,2000);
   insert into test1000 values(null ,2000); -- not insert the null values in salary column 
   
   select * from test1000;
   
   
   
   
   -- DEFAULT: Automatically assigns a default value to a column if no value is specified during an INSERT operation.
              -- This helps ensure columns have a value even if one isn't manually provided.
create table test10001(salary int not null default 1900,age int default 18);
  insert into test10001 values(100,2000);
  insert into test10001 ( salary)  values(100);
select * from test10001;

-- UNIQUE: Guarantees that all values in a column (or a combination of columns) are distinct.
          -- This is useful for columns like email addresses or product barcodes,
              -- where no two records should have the same value.
              
-- check :---
create table test200 (salary int , age int check (age> 18));

create table  test203 (a int , b int ,salary int ,age int,
                         constraint test_test203_salary_chk_1000_lt check (salary > 10000), 
                         constraint test_test203_age_chk_1000_lt check (age > 18));
					
insert into test203 values(1,2,100000,19);
insert into test203 values(1,2,1000,14);

-- primary key ::->>  KEY Uniquely identifies each record in a table. It is a combination of NOT NULL and UNIQUE constraints.
 -- Every table can have only one primary key.
create table  test204 (a int primary key  , b int );
insert into test204 values (1,45);
create table  test206 (a int , b int,
                          primary key (a,b ));
insert into test206 values (20,45);

-- foreign key::-=>>> constrain which is used to make the realtionship
                 --   1 table can have multi foreign
                 --   foreign refer to  primary key of another table

create table cust(id int unique key , name varchar(20));
insert into cust values(1,"tiger"),(2,"yash");
select * from cust;

create table ord(id int ,cid int ,price int, foreign key(cid) references cust(id) on delete cascade );
insert into ord values(100,1,1999),(101,2,2000),(102,1,2001);
insert into ord values(102,5,2001);
select * from ord;

drop table test101;
create table ord(id int ,cid int ,price int, foreign key(cid) references cust(id) on delete set null );
insert into ord values(100,1,1999),(101,2,2000),(102,1,2001);
insert into ord values(102,5,2001);
select * from ord;       


drop table test101;
create table ord(id int ,cid int ,price int, foreign key(cid) references cust(id) on update set null );
insert into ord values(100,1,1999),(101,2,2000),(102,1,2001);
insert into ord values(102,5,2001);
select * from ord;         
