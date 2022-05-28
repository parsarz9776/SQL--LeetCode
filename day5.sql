#1148. Article Views I
select Distinct (author_id) as id from Views
where author_id = viewer_id 
Order By id ASC

#1581. Customer Who Visited but Did Not Make Any
# Write your MySQL query statement below
#select customer_id , count(transaction_id ) from Visits
#inner join Transactions
#on Visits.visit_id=Transactions.visit_id
#group by customer_id
select customer_id, count(customer_id) as count_no_trans from Visits 
where visit_id not in (select distinct(visit_id) from Transactions)
group by customer_id

#175. Combine Two Tables
# Write your MySQL query statement below
select Person.firstName , Person.lastName , Address.city, Address.state from Person
left outer join Address
on Person.personId = Address.personId  

#SELECT Person.firstName, Person.lastName, Address.city, Address.state
    #FROM Person LEFT JOIN Address 
        #ON Person.personId = Address.personId;





























#SELECT Person.firstName, Person.lastName, Address.city, Address.state
    #FROM Person LEFT JOIN Address 
        #ON Person.personId = Address.personId;