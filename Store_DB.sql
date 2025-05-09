show databases;
select database();

use store_db;

create database store_db;

create table Customer_Details 
(Id int, Cust_Name varchar(20));

select * from Customer_Details;

insert into Customer_Details 
values
(1011, 'Mukul Singh'),
(1012, 'Ravi Singh'),
(1013, 'Suraj Kashyap');

#--- Description of Tables
desc Customer_Details;

#--- Just want to see Customer Name
select Cust_Name from Customer_Details;



