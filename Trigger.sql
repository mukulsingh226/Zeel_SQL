
/*
Trigger

MySQL triggers are special stored programs that automatically execute in response to specific events 
(like INSERT, UPDATE, or DELETE) on a table. They can be defined to run either before or after the event, 
allowing for actions to be performed before or after changes to the table. 

There are total 6 types of trigger..

1. Before insert
2. After insert
3. Before Update
4. After Update
5. Before Delete
6. After Delete
*/

create database Freelancing;

use Freelancing;

create table Salary
(User_ID int primary key auto_increment,
Emp_Name varchar(30) not null,
Hourly_Salary int not null,
Total_Salary int default 0);

alter table Salary add column Working_Hour int, add column Total_Salary int default 0;

select * from Salary;before_insert_Salary

insert into Salary
(User_ID, Emp_Name, Hourly_Salary, Working_Hour)
values
(1011, "Mukul Singh", 65, 4);

# -- creating trigger (Before insert)

delimiter //

create trigger before_insert_Salary
before insert
on
Salary for each row
begin

set new.total_salary = new.hourly_salary * new.working_hour;

end; //

delimiter ;

insert into Salary
(Emp_Name, Hourly_Salary, Working_Hour)
values
("Ravi Singh", 95, 4);

insert into Salary
(Emp_Name, Hourly_Salary, Working_Hour)
values
("Vandana Singh", 120, 4),
("AK Singh", 160, 6);

insert into Salary
(Emp_Name, Hourly_Salary, Working_Hour)
values
("Vipul Singh", 120, 8),
("Ansh Singh", 160, 8);


# -- After Insert 

delimiter //

create trigger after_insert_salary
after insert
on
Salary for each row
begin
set new.total_salary = new.hour_salary * new.working_hour;
end;  //

delimiter ;



drop trigger if exists after_insert_salary;

/*Duplicate data were stored*/
delete from Salary where User_ID =  1016;
