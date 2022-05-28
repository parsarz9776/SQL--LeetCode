#176. Second Highest Salary
# Write your MySQL query statement below
select ifnull((
 select distinct Salary
 from Employee
 order by Salary desc
 limit 1 offset 1),
 null)
as SecondHighestSalary;

#608. Tree Node
# Write your MySQL query statement below
select id,
case when p_id is null then 'Root'
when id not in (select distinct p_id from Tree where p_id is not null )then 'Leaf'
else 'Inner'
end as type
from Tree