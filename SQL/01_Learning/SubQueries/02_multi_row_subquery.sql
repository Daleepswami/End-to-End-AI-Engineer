Multi Row Subquery:=>> multi subquery we con  not use  any comparison operator  and return the multiple rows
                   Used with: IN, ANY, ALL
                   Cannot use = directly (may cause error)
                   Used when multiple values are expected
 --  1. in operator :-->>
       select * from payment where amount in (select amount from payment where payment_id=3 or payment_id=6);
       
       
-- get the all payment info. where customer_id is same as payment id 3 or 250
select * from payment where customer_id in(select customer_id from payment where payment_id in (2,250)); 
 
 
 -- any operator:::=-->>>> same of in operater 
 
select * from payment where customer_id =any(select customer_id from payment where payment_id in (2,250)); 
 -- <any operator:::=-->>>>
  
select * from payment where customer_id <any(select customer_id from payment where payment_id in (2,250)); 
  -- >any operator:::=-->>>>
 select * from payment where amount >any (select amount from payment where payment_id=3 or payment_id=6);
 -- > all  
 select * from payment where amount > all (select amount from payment where payment_id=3 or payment_id=6);
  -- > all 
  select * from payment where amount < all (select amount from payment where payment_id=3 or payment_id=6);
 
-- Q.01 get the all payment info where  amount is greater than any amount of payment id 3 and 1

select * from payment where amount >any (select amount from payment where payment_id =3 and payment_id=1);
--Q.02  get all payment info where amount is greater than amount amoung all ther customer id 1 

select * from payment where amount >all (select amount from payment where customer_id =1)

