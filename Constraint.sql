use store_db;

/* Condititons 

Where Clause
*/ 

# Find customer details through Customer ID

select * from customer_details where ID = 1013;
select Cust_Name from customer_details where ID = 1013;


# --- Alter 

alter table customer_details add column Contact_No long;  # --- Adding new column
alter table customer_details modify Cust_Name varchar(100);  # --- Changing datatype or value size
alter table customer_details rename column Cust_Name to  Customer_Name; # --- Renaming the column name.

#---Modify / Update

select * from customer_details;

update customer_details set Contact_No = 916782722 where ID = 1011;
update customer_details set Contact_No = 8898775985 where ID = 1012;
update customer_details set Contact_No = 7666458218 where ID = 1013;

#--- Delete 

delete from customer_details where ID = 1012;

#--- Null

insert into customer_details
values
(1014, Null, 88459245254);

update customer_details set Cust_Name = "Manoj" where ID = 1014;

# --- Not Null

create table customer_purchase
(Product_ID int not null, Product_Name  varchar(20) Not null, Product_Price int not null);

select * from customer_purchase;

desc customer_purchase;

insert into customer_purchase 
values
(5112, "Hair Oil", 120),
(6558, "Biscuits", 220),
(7748, "Rice", 300);

# --- Default Values

alter table customer_purchase modify column Product_Price int default 199;

insert into customer_purchase 
(Product_ID, Product_Name)
values
(4115, 'Turmeric Powder');

desc customer_details;



use store_db;


# --- Primary Key

/*
The PRIMARY KEY constraint uniquely identifies each record in a table.
Primary keys must contain UNIQUE values, and cannot contain NULL values.
A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).
*/

# -- Altering table to Primary Key

alter table customer_details modify column ID int primary key; 

select * from customer_details;

desc customer_details;

insert into customer_details
values
(1015, "ABC", 8857899587),
(1016, "DEF", 9987876567 ); 


# --- Auto Increment

alter table customer_details modify ID int auto_increment;


insert into customer_details
(Customer_Name, Contact_No)
values
("IJK", 7554952284);


# -- Alias

select ID as Customer_ID, Customer_Name, Contact_No from customer_details;












