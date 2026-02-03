use sakila;
select * from actor;

-- where :--> select * from tables where condition
select * from actor where actor_id!=3;

select * from actor where actor_id=7;
select * from actor where first_name='NICK';

-- which is a logical operator condition
select * from actor where actor_id>3 and actor_id<7;

select * from actor where actor_id=3 and actor_id=7;

select * from actor where actor_id>3 or actor_id >7;

select * from actor where actor_id=3 or actor_id=7;


-- between operator=> this operator fatch the data given range 
select * from actor where actor_id between 2 and 7;

select * from actor where actor_id between 7 and 2; -- wrong format 

-- IN operator =>> fatch/access the specific value 
select * from actor where actor_id in (2,5,9);

select * from actor where actor_id in (45,56,25);

select * from actor where first_name in ('NICK','ED');

-- like operator =>> search the pattern
-- A first_charcater
-- keyword =>> % (zero or more character)


select * from actor where first_name like 'A%';


-- last character
select * from actor where first_name like '%A';

select * from actor where first_name like '%P';

-- at any place A 
select * from actor where first_name like '%A%';

-- RR
select * from actor where first_name like '%RR%';
select * from actor where first_name like '%R%R%';


--    _(only 1 character)
select * from actor where first_name like '_R%';