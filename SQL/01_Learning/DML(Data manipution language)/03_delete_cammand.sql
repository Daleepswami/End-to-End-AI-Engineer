 -- delete::=>> DELETE is used to remove data from a database table.
                
       --  Basic Syntax::=>> DELETE FROM table_name WHERE condition;
       
       -- Basic Example
            DELETE FROM employee WHERE id = 1;
            
		-- DELETE Without WHERE::-- all data delete without where condition
          DELETE FROM employee;
          
		-- Delete Using IN and multiple row 
        DELETE FROM employee WHERE id IN (1, 2, 3);
---


create table cust3( id int, name varchar(20));
insert into cust3 values(1, 'Tiger'), (2,'Yash'), (3, 'Tiger');

select * from cust3;

select c1.id, c1.name, c2.id, c2.name from cust3 as c1 
join cust3 as c2 where c1.name=c2.name and c1.id < c2.id;

delete c2 from cust3 as c1 inner join cust3 as c2 
on c1.name=c2.name where c1.id < c2.id;
select * from cust3;
