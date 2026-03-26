-- recursive cte :-- In which we can use cte again and again they are mainly used to find the hirarchal order

with recursive cte as (
      select 10 as  n 
       union all
       select n+1 from cte where n<13
       )
select * from cte;
