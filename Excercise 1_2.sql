# --- Exercise No. 1

/* Create a Database SBI_Bank 

Create table Employees
emp_id, name, desig, dept

-> emp_id column should not alloe duplicate and null values

-> Value of emp_id column should auto increment

-> name column should not contain null values 

-> desig column should have default value as 'Probation'
*/


create database SBI;

use SBI;

create table employee
(Emp_ID int auto_increment unique not null,
Emp_Name varchar(30) not null,
Designation varchar(30) default "Probation");
 
 #-- Forgotten to add Dept Column
 alter table employee add column Dept varchar(30);
 
 alter table employee modify column Dept varchar(30) not null;
 
 select * from employee;
 desc employee;

insert into employee
values
(101, "Raj", "Manager", "Credit Card");

insert into employee
(Emp_Name, Designation, Dept)
values
("Manish", "Executive", "Treasury"),
("Rahul","Associate","Home Loan"),
("Rajesh", "Executive", "DII");

insert into employee
(Emp_Name, dept)
values
("Anurag", "KYC");

delete from employee where emp_id = 109;

select * from employee;

select Emp_ID, Emp_Name as Employee_Name from employee;





