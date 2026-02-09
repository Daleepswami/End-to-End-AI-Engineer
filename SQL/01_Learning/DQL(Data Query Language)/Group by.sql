use sakila;
-- group by ::-  group by is a statement use to group similar value
                -- group will be created according for unique value
                -- we are not use column in select this not applied group by 
                
select customer_id, sum(amount) from payment group by customer_id;

select payment_id, count(*),sum(amount) from payment group by payment_id;

-- Q.01  you have to find have amount are visiable 
select amount, count(amount) from payment group by amount;
-- Q.02 try to get total amount the max amount and total tranction done by each coustomer 

select customer_id, sum(amount),max(amount),count(payment_id) from payment group by customer_id ;
-- Q.03  you have to find out the total amount spend by each staaff along with number of customer only serverd after payment_id 9 
select staff_id, count(staff_id),sum(amount), max(amount) from payment  where payment_id > 9 group by staff_id ; 


-- Q.04 you have find the total amount  and avg and total tranction then each month

select   month(payment_date) ,sum(amount),avg(amount),count(payment_id) from payment group by month(payment_date);

-- Q.05 get me total min avg done for the first week each month may june july
select month(payment_date),sum(amount), avg(amount),max(amount)from payment where month(payment_date) in (5,6,7) and day(payment_date) between 1 and 7 group by month(payment_date)
