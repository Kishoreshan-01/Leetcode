/* Write your T-SQL query statement below */

Select name as Customers
from Customers as c
left join Orders as o
on c.id  = o.customerId
where o.id is null 