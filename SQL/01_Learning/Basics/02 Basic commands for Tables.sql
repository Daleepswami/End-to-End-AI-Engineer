-- How to see the table in  the database
show tables;

-- How to create new tables
create table students(student_id int,student_name char(10),course char(10));

-- How to insert the data in table
insert into students values(101,'ram','MCA');

-- see the all data  stored in tables
select * from students;

-- describe the table structure 
describe students;

-- delete the all rows/data in the table
SET SQL_SAFE_UPDATES = 0 ;delete from students;
select * from students;

-- drop the tables
drop table students;





