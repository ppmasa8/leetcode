-- Write your MySQL query statement below
select w.id as id
from weather w, weather e
where datediff(w.recordDate, e.recordDate) = 1 and w.temperature > e.temperature;
