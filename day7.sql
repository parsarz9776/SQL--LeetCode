#Find Followers Count
# Write your MySQL query statement below
select user_id , count(follower_id) As followers_count from Followers 
group by user_id
order by user_id

#Daily Leads and Partners
# Write your MySQL query statement below
select date_id ,make_name,
count(distinct lead_id) AS unique_leads , 
count(distinct partner_id ) As unique_partners 
from DailySales
group by date_id ,make_name