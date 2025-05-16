# -- Case

/*
The CASE statement goes through conditions and returns a value when the first condition is met (like an if-then-else statement). 
So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.

If there is no ELSE part and no conditions are true, it returns NULL.
*/

USE SBI;

select * from employee_insurance;

select Emp_FName, Emp_LName, Salary,
case
When Salary < 50000  then "Low Salary"
else 
"As Per Company Policy"
end as "Salary Category"
from 
employee_insurance order by Salary;



select Emp_FName, Emp_LName, Designation,
case
when Designation = "Executive" then "Entry Level"
when Designation = "Manager" then "Mid Level"
else "Senior Level"
end as "Employee_Band"
from 
employee_insurance order by Employee_Band;