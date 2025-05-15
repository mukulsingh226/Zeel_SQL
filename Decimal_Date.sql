create database Sports_Store;

use Sports_Store;

create table Goods_Info
(Product_ID int primary key, 
Product_Name varchar(40) not null, 
Price decimal(4,2) not null);

alter table goods_info modify column Price decimal (6,2); 


desc Goods_Info;

insert into Goods_Info
values
(6223, "Football", 1199.00);

select * from Goods_Info;

insert into Goods_Info
values
("6224", "Adidas Football Shoe", 1800.00);


insert into Goods_Info
values
("6224", "Adidas Football Shoe", 1800.00);

insert into Goods_Info
values
("1055", "MU Jersey", 999.000);


create table float_double
(f float, d double);

insert into float_double 
values
(123.456789, 123.4567890);

insert into float_double 
values
(223.456789, 223.45678911);

delete from float_double where f = 123.457;

select * from float_double;

truncate table float_double;




