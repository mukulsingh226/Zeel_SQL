
/*
The GROUP BY statement groups rows that have the same values into summary rows,
like "find the number of customers in each country".
*/

use SBI;

select * from employee_insurance;

select City from employee_insurance group by City;

select Designation, count(emp_id) as Total_Employee from employee_insurance group by Designation;

select Department, count(emp_id) as Total_Employee from employee_insurance group by Department;



# --- Min & Max

/*
The MIN() function returns the smallest value of the selected column.

The MAX() function returns the largest value of the selected column.
*/

select max(Salary) from employee_insurance;

select min(Salary) from employee_insurance;

select max(Emp_FName) from employee_insurance;

# --- Sub Queries

/*
In MySQL, a subquery (or nested query) is a query embedded within another query. 
It allows you to use the result of one query within another. 
Subqueries can be used in various parts of a SQL statement, 
including the SELECT, FROM, WHERE, and HAVING clauses.
*/

select * from employee_insurance
where
salary = (select min(Salary) from employee_insurance);

select * from employee_insurance
where
salary = (select max(Salary) from employee_insurance);

# --- SUM & AVG 

/*

The SUM() function returns the total sum of a numeric column. 
The AVG() function returns the average value of a numeric column. 

*/




select sum(Salary) from employee_insurance;

select department, sum(Salary) from employee_insurance group by Department;

select avg(Salary) from employee_insurance; 

select department, avg(Salary) from employee_insurance group by Department; 
