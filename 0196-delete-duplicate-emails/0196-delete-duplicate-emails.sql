/* 
 Please write a DELETE statement and DO NOT write a SELECT statement.
 Write your T-SQL query statement below
 */


with cte
as
(
    Select rank() over(partition by email order by id asc) rnk,*
    from Person
)
delete from cte
where rnk > 1