# -- 1. Find total number of employees in database

select count(Emp_ID) as Total_Count from employee_insurance;

# -- 2. Find number of employees in each department

select department, count(department) 
as 
Total_Count 
from 
employee_insurance group by Department;



# --- 3. Find lowest salary paying

select * from employee_insurance where 
salary = (select min(Salary) from employee_insurance);

# --- 4. Find highest salary paying

select * from employee_insurance where 
salary =
(select max(Salary) from employee_insurance);

# --- 5. Find total salary in Loan department?

select department, sum(Salary) 
from employee_insurance 
where department = "Life Insurance"; 

# --- 6. Average salary paying in each department?

select department, avg(salary) from employee_insurance group by department;