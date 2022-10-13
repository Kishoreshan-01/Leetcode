/* Write your T-SQL query statement below */


Select Email
from person
group By Email
having Count(Email) > 1