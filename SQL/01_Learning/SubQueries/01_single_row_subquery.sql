01. Single Row Subquery
                          Returns only one row
                          Returns a single value
                          Used with operators: =, >, <, >=, <=
                          Mostly used with aggregate functions (AVG, MAX, MIN, SUM)
                          Inner query executes first


--Q.01 get the district and population for all the city where country code is same as of name Namibe
select district ,population from city where countrycode=(select countrycode from city where name='Namibe');


 -- Q.02 get me city name and district where district is same as of Americana city
select name,district from city where district=(select district from city where name ='Americana');
select population from city where name='Barueri';


-- Q.03  get me all city info where the population of city is less than population of Barueri
select * from city where population < (select population from city where name='Barueri');


-- Q 04. get me country code and name where continent is same as of country albanai
        select name ,code  from country where continent=(select continent from country where name ='Albania');


-- Q.05 get me whose country info where indepyear should my after of afganisthan
 select * from country where Indepyear < (select IndepYear from country where name ='Afghanistan');


-- Q.06  get the name continent ,region and population all the countryies
         -- where region same as a Belgium and have indepyear after 1800
 select name,continent, Region,population from country where
 region=(select region from country where name='Belgium') AND Indepyear >1800;


-- 07 select city and country code where country code same as of Haag 
select * from city;
select  countrycode from city where name ='Haag';
select name ,countrycode from city where Countrycode =(select  countrycode from city where name ='haag');


-- 08 select city and country code where country code same as of 'Ede' 
select name ,countrycode from city where Countrycode =(select  countrycode from city where name ='Ede');


