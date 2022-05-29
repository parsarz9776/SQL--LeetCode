#Rising Temperature
# Write your MySQL query statement below
select p1.id as id from weather p1
join weather p2
where DATEDIFF(p1.recordDate , p2.recordDate) = 1
And p1.temperature > p2.temperature   

#Sales Person
# Write your MySQL query statement below
select SalesPerson.name from SalesPerson
where SalesPerson.name not in (
select SalesPerson.name from SalesPerson
inner join Orders On SalesPerson.sales_id =Orders.sales_id 
inner join  Company on Orders.com_id = Company.com_id
where Company.name = 'Red'
)


