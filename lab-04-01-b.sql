select employee_id,last_name,salary,salary*1.105 AS "New Salary",salary*1.105-salary as "Increase"
from employees
/
