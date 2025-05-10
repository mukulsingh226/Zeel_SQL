#-- Distinct

/*
In MySQL, the DISTINCT keyword is used in SELECT statements to return
 only unique rows (records) from a query result, eliminating any duplicate rows.
*/

use SBI;

select Designation from employee;

select distinct Designation from employee;

create table employee_insurance
(Emp_ID int primary key,
Emp_FName varchar(30) unique not null,
Emp_LName varchar(30) unique not null,
Designation varchar(40) not null,
Department varchar(40) not null, 
City varchar(40));

select * from employee_insurance;

alter table employee_insurance modify column Emp_ID int auto_increment; 
desc employee_insurance;

insert into employee_insurance
values
(5001, "Rajesh", "Dubhale", "Deputy Manager", "Life Insurance", "Mumbai");


insert into employee_insurance
(Emp_FName, Emp_LName, Designation, Department, City)
values
("Mangesh", "Jaiswal", "Zonal Head", "Car Insurance", "Noida"),
("Neeta", "Dubey", "Manager", "Health Insurance", "Delhi");

insert into employee_insurance
(Emp_FName, Emp_LName, Designation, Department, City)
values
("Anuj", "Rawat", "Executive", "Car Insurance", "Mumbai"),
("Vipul", "Shah", "Manager", "Life Insurance", "Chennai");

select distinct designation from employee_insurance;
select distinct Department from employee_insurance;

select distinct City from employee_insurance;










