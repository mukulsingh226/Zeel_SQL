/*
Relationship Types 

1. One to One
2. One to Many
3. Many to Many 
*/

create database Relationship_Store;

use Relationship_Store;


create table Customer
(Cust_ID int primary key, 
Customer_Name varchar(30) not null,
Customer_Email varchar(40) unique not null);

select * from Customer;

alter table Customer modify column Cust_ID int auto_increment;


desc Customer;

insert into Customer
values
(1010, "Mukul Singh", "mukul@rmstore.com");


insert into Customer
(Customer_Name, Customer_Email)
values
("Ravi Singh", "ravi11@rmstore.com"),
("Vipul Singh", "vipuls@rmstore.com");

insert into Customer
(Customer_Name, Customer_Email)
values
("Ansh Singh", "ansh@rmstore.com");


create table Orders
(Cust_ID int,
Order_ID int primary key auto_increment,
Product varchar(20),
MRP int not null,
 Purchase_Date date,
foreign key
(Cust_ID)
references Customer(Cust_ID));


desc Orders;

select * from orders;

insert into Orders
values
(1010, 45523, "Cricket Bat",999, "2024-12-18");

insert into Orders
(Cust_ID, Product, MRP, Purchase_Date)
values
(1010, "Cricket Ball", 150, "2024-12-18"),
(1010, "Cricket Shoe", 2499, "2024-12-18");


insert into Orders
(Cust_ID, Product, MRP, Purchase_Date)
values
(1012, "Football", 850, "2024-12-19"),
(1012, "Football Shoe", 1499, "2024-12-19"),
(1012, "Stockings", 499, "2024-12-19"),
(1012, "Knee Pad", 400, "2024-12-19");


insert into Orders
(Cust_ID, Product, MRP, Purchase_Date)
values
(1010, "Cricket Kit Bag", 1850, "2024-12-19");

select * from Customer, Orders;


select * from Customer
left join 
Orders
on 
Customer.Cust_ID = Orders.Cust_ID;



