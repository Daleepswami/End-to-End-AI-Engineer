
-- Data types in SQL 

-- numeric (int , float, decimal)
-- tinyint , medium , big int , small int , int


-- | Data Type         | Size (Bytes) | Range / Description             |
-- | ----------------- | ------------ | ------------------------------- |
-- | `TINYINT`         | 1            | -128 to 127 (signed)            |
-- | `SMALLINT`        | 2            | -32,768 to 32,767               |
-- | `INT` / `INTEGER` | 4            | -2,147,483,648 to 2,147,483,647 |
-- | `BIGINT`          | 8            | Very large integers             |
-- | `DECIMAL(p,s)`    | Variable     | Exact numbers (e.g., money)     |
-- | `NUMERIC(p,s)`    | Variable     | Same as DECIMAL                 |
-- | `FLOAT`           | 4            | Approximate decimal values      |
-- | `DOUBLE`          | 8            | Larger approximate values       |


use regex;

drop table test7;
create table test7 (id tinyint);  -- (-128) to 127
insert into test7 values(1),(-128),(127);
insert into test7 values(128);  #out of range value 
select * from test7;

drop table test8;
create table test8 ( id tinyint unsigned);   -- 0 to 255 
insert into test8  values(129),(255);
insert into test8 values(-125); # error
select * from test8;

drop table test9 ;
create table test9(price float,price2 double);
insert into test9 values(9182.125,9182.125),(10.1234567, 10.1982764);
insert into test9 values(7891.25661956, 17836.23);
select * from test9;

drop table test10;
create table test10 (price2 double(5,2));   -- 5 is precision  
insert into test10 values(98.1);
insert into test10 values(98.15);
insert into test10 values(4.11567);
insert into test10 values(4.1156);  
insert into test10 values(1456.1373);    -- error 

select * from test10;


-- varchar and char 
-- varchar is datatype =< string / character values
-- char => character but fix length of character


drop table test11;
create table test11 (name char(10));
insert into test11 values('ABC'),('Aman');
insert into test11 values('Chandraprakash');  -- Error  
select *, length(name) from test11;
select * from  test11;


-- date
create table test12(dob date);
insert into test12 value("2025-19-05");   -- this is wrong format
insert into test12 value("2025-12-05");  -- right format (yyyy-mm-dd)
select * from test12;

