/* Write your T-SQL query statement below */

/*
with cte
as
(
    Select email, row_number() over(partition by email order by email) as rn
    From Person
)
Select distinct email as Email
from cte
where rn > 1 
*/


with cte
as
(
    Select email, count(1) as cnt
    From Person
    Group by email
)
Select email as Email
from cte
where cnt > 1 
