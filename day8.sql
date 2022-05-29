#Game Play Analysis I
# Write your MySQL query statement below
select player_id, Min(event_date) AS first_login 
from Activity
group by player_id

#The Latest Login in 2020
# Write your MySQL query statement below
select user_id, MAX(time_stamp) AS  last_stamp                
from Logins
where YEAR(time_stamp) = 2020
group by user_id

#Find Total Time Spent by Each Employee
# Write your MySQL query statement below
select event_day AS day, emp_id , (SUM(out_time) - SUM(in_time)) AS total_time 
from Employees
group by event_day, emp_id

#Customer Placing the Largest Number of Orders
# Write your MySQL query statement below
#select distinct(customer_number) from Orders
#group by customer_number
#order by count(order_number) DESC
select customer_number from Orders
group by customer_number
order by count(order_number) desc
limit 1



