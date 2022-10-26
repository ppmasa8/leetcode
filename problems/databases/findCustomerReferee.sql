-- Write your MySQL query statement below
select c.name as name
from customer c
where c.referee_id is null or c.referee_id != 2;
