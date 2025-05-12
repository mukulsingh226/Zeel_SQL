use SBI;

select * from employee_insurance;
# --- 1.  Find different types of department in databases? 
select distinct(department) from employee_insurance;


#--- 2. Display records with High - Low Salary
select * from employee_insurance order by salary desc;

# --- 3. How to see only top 3 records from a table?
select * from employee_insurance limit 3;

# --- 4. Show records where first name start with letter 'A'

select * from employee_insurance where Emp_FName Like 'a%';

# --- 5. show records where the length of Emp_lname is 4 character.

select * from employee_insurance where Emp_LName Like "____"; 

