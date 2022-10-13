/* Write your T-SQL query statement below */
Select e.name as Employee
from Employee as e
left join Employee as m
on e.managerId = m.id
where m.Id is not null
and e.salary > m.salary