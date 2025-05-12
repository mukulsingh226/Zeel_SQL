# Like

/*
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the LIKE operator:

The percent sign (%) represents zero, one, or multiple characters
The underscore sign (_) represents one, single character
The percent sign and the underscore can also be used in combinations!
*/

use SBI;

select * from employee_insurance;

select * from employee_insurance where Department Like "%Car%";
select * from employee_insurance where Designation Like "%Mana%";


# -- Modifying table and setting default salary = 25k.
alter table employee_insurance modify column Salary int default 25000;


# -- Limit

/*
The LIMIT clause is used to specify the number of records to return.
The LIMIT clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
*/


# --Just want to see first 3 record details.

select * from employee_insurance limit 3;


# -- just want to see the highest 
select * from employee_insurance order by Salary desc limit 1;


# --- Count 

/*
The COUNT() function returns the number of rows 
that matches a specified criterion.

The AVG() function returns the average value of a numeric column. 

The SUM() function returns the total sum of a numeric column. 

*/
select count(*) from employee_insurance;

select sum(Salary) from employee_insurance;

select count(*) from employee_insurance where designation = "executive";

select count(distinct designation) as Total_Number_of_Designation
from 
employee_insurance;

select avg(Salary) from employee_insurance;

select department, count(emp_id), sum(Salary) 
from employee_insurance group by department;

select department, count(emp_id), avg(Salary) 
from employee_insurance group by department;


