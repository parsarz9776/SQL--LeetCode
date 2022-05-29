#Sales Analysis III
# Write your MySQL query statement below
select Product.product_id , product_name from Product
join Sales
On Product.product_id = Sales.product_id 
group by Product.product_id
having Min(sale_date) >= '2019-01-01' and Max(sale_date) <='2019-03-31'

#Bank Account Summary II
# Write your MySQL query statement below
select name , sum(amount) as balance from Users
join Transactions
On Users.account = Transactions.account
group by name
having sum(amount) >10000

#Actors and Directors Who Cooperated At Least Three Times
# Write your MySQL query statement below
select actor_id, director_id
from actordirector
group by actor_id,director_id
having count(actor_id) >= 3

#Duplicate Emails
# Write your MySQL query statement below
select email from Person 
group by email 
Having count(email) > 1;

#Top Travellers
select name,
    case 
        when SUM(distance) is null then 0
        else SUM(distance)
    end as travelled_distance
from Users
left join Rides on Rides.user_id = Users.id
group by name
order by travelled_distance desc, name