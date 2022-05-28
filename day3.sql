#1527. Patients With a Condition
select *
from Patients
where conditions like('DIAB1%')
or conditions like ('% DIAB1%')
or conditions like ('% DIAB1')

#1484. Group Sold Products By The Date
SELECT SELL_DATE,
COUNT(DISTINCT PRODUCT) AS num_sold ,
GROUP_CONCAT(DISTINCT PRODUCT) AS products                     
FROM ACTIVITIES
GROUP BY SELL_DATE
ORDER BY SELL_DATE;

#1667. Fix Names in a Table
SELECT user_id, CONCAT(UPPER(SUBSTR(name, 1, 1)), LOWER(SUBSTR(name, 2))) AS 'name'
FROM Users
ORDER BY user_id;
