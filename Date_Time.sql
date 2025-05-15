# --- Date & Time

/*
--> MySQL comes with the following data types for storing a date or a date/time value in the database:

DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY
Note: The date data type are set for a column when you create a new table in your database!

*/

/*Added new Column name date_time in goods_info table format - date */


use sports_store;

select * from goods_info;

alter table goods_info add column date_time date;

update goods_info set date_time = '2025-03-10' where Product_ID = 1055;

update goods_info set date_time = '2025-03-27' where Product_ID = 6223;
update goods_info set date_time = '2025-03-27' where Product_ID = 6224;


/*-------------------------------------------------------------------------------*/

#--- created a new table name Store_Employee with a column Joining_Date datetime

create table Store_Employee
(Emp_ID int primary key, Emp_Name varchar(50) not null, Address_City varchar(20) not null, Joining_Date datetime);


insert into Store_Employee
values
(7010, "ABC", "London", "2024-08-22");


insert into Store_Employee
values
(7011, "Robert", "Manchester", "2024-08-26 15:30:00");

select * from Store_Employee; 

desc Store_Employee;

/*--------- date, time, datetime -----------*/

Create table date_time_demo
(jd date, jt time, jdt datetime);

desc date_time_demo;

insert into date_time_demo
values
('2023-07-27','13:20:00','2023-07-27 13:20:00');

insert into date_time_demo
values
('2023-08-10','09:45:00','2023-08-10 09:45:00'),
('2023-09-22','10:20:00','2023-09-22 10:20:00');

SELECT * FROM date_time_demo;

/*---------------------------------------------------------*/


/*
CURDATE() -- YYYY-MM-DD
CURTIME() -- hh:mm:ss
NOW() -- YYYY-MM-DD HH:MM:SS 
*/

select curdate();

select curtime();

select now();

select * from date_time_demo;

insert into date_time_demo
values
(curdate(), curtime(), now());

/*-----------------------DayName, DayofWeek, DayofMonth -------------------------------*/

select dayname('1993-06-22'); # -- Tuesday
select dayofweek('1993-06-22') as Day_of_Week; # --  3
select dayofmonth('1993-06-22'); # -- 22


select dayofmonth(curdate());  
select dayofweek(current_time); 
select dayofmonth(current_time());

/*------------------------------------Month_Name, Year--------------------------------------------------------*/

select month('1993-06-22'); # -- 6
select monthname('1993-06-22');  #-- June

select * from date_time_demo;

select jd, monthname(jd) as Month_Name from date_time_demo;

select jd, year(jd) as Month_Name from date_time_demo;

select jdt, hour(jdt) as 24_Hour_Time from date_time_demo; 

select jdt, minute(jdt) as 24_Hour_Time from date_time_demo;

select hour(current_timestamp()) as Current_Time_India;

/*-----------Date Format Functions-----------------*/

select date_format(now(), '%d/%m%/%y') as Indian_Date_Format;


select date_format(now(), '%D %a %M% %y') as Indian_Date_Format;

/*----------------------Date mathematical Operations-----------------------*/


select datediff('1993-06-22', '1993-04-06') as Days_Difference;

select datediff('2025-06-18', now());


# -- Date Add

select date_add(now(), interval 1 Year);

select date_add('2025-05-18', interval 1 Month);


# --- Default & ON Update Timestamp


create table tweet_time
(Tweet varchar(150),
created_at datetime default current_timestamp,
UPDATED_AT datetime ON update current_timestamp);

alter table tweet_time change created_at CREATED_AT DATETIME DEFAULT CURRENT_TIMESTAMP;

SELECT * FROM TWEET_TIME;

insert into tweet_time
(Tweet)
values
("Hello Everyone");

update tweet_time set tweet = "Good Evening Everyone";
