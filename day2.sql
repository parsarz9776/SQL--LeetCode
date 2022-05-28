#196. Delete Duplicate Emails
Delete p2
from person p1
join person p2
where p1.email = p2.email
and p1.id < p2.id;

#627. Swap Salary
UPDATE Salary
SET
    sex = CASE sex
               WHEN 'm' THEN 'f'
               ELSE 'm'
           END
		   
#1873. Calculate Special Bonus
SELECT employee_id,
CASE
    WHEN employee_id%2 !=0 AND Name NOT LIKE 'M%' THEN salary
    ELSE salary*0
END AS bonus
FROM Employees;