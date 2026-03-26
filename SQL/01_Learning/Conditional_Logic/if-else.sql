
-- ifnull():--> 

use world;
select * from country;
select indepyear,ifnull(indepyear,0) from country;

select count(indepyear),count(ifnull(indepyear,0)) from country;

-- grneral function
  select name,population,if(population>1000,'large population','small population') from country ;
  
   select name,population,if(population>1000,'large population',if(population>5000, 'medium population','small population')) from country ;
 
-- coalesce():-->> this is return the first not null value in the list 
select  name ,indepyear,lifeexpectancy,gnpold,coalesce(indepyear,lifeexpectancy,gnpold) from country;


-- in case if the population greater than 20000 and country name start with "a" (very large country ) if he population greater than 25000 this is small country
select * from country;
select name ,population ,if(population>20000 and name LIKE 'A%','very large country',
if(population>25000, 'large country','medium country')) from country ;
