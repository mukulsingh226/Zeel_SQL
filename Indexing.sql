
# -- Index

/*
 Indexes are used to retrieve data from the database more quickly than otherwise.
 The users cannot see the indexes, they are just used to speed up searches/queries.
 
 Note:
 1). Updating a table with indexes takes more time than updating a table without (because the indexes also need an update).
 So, only create indexes on columns that will be frequently searched against.
 
 2). Automatically creates thee indexes for Primary Key and Unique Columns.
 
 3). Index columns that you frequently use to retrieve the data.
 
 4). Index columns that are used to joins to improve join performance.
 
 5). Avoid columns that contain too many NULL values.
 
 6). Small tables do not require indexes.

*/

use SBI;

select * from employee;
select * from employee_insurance;

/*TO know which data was inserted at last through EMP_ID*/

SELECT * FROM employee_insurance
ORDER BY emp_id DESC
LIMIT 2;



# -- Creating an Index 

create index Last_Name
on
employee_insurance(Emp_ID, Emp_LName);

/*Calling Index*/

show index from employee_insurance;
show index from employee_insurance from SBI;

show indexes from employee_insurance;