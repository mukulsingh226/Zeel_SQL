/*

Excercise - 3

Task 1
101:Raj:Manager:Credit Card

Task 2:
101:Raj:Singh:Manager:Credit Card

Task 3:
101:Raj:MANAGER:Credit Card  (Designation in CAPS)

Task 4: Initial letter of dept with emp_id and emp_Name column.
L101 Raj
C102 Manish

*/


use SBI;

select * from employee;

# Task 1

select concat_ws(':', emp_id, emp_name, designation, dept) as Full_Details from employee where emp_id = 101;

#Task 2
# (No L_Name Column)

select concat_ws(":", Emp_ID, Emp_Name, concat(Designation, ", ", dept)) as Demo from employee;


# Task 3 -- Designation in Uppercase with separator

select concat_ws(" : ", emp_id, emp_name, upper(Designation), dept) as Desig_Caps from employee;

#Task 4

select emp_id, emp_name from employee;

select concat(Left (dept , 1), emp_id ), emp_name from employee;

#


