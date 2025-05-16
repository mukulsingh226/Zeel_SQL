
# -- Relational or Comparison Operator

/*'
1. <  Less than
2. >  Greater than
3. <= Less than or equal to
4. >= Greater than equal to
5. = Equal to
6. != Not Equal to
*/

use SBI;
select * from employee;

select * from employee_insurance;

# -- >  Greater than
select * from employee_insurance where salary > 65000;

# -- >= Greater than equal to
select * from employee_insurance where salary >= 65000;

select * from employee_insurance where salary >= 65000;

#-- != Not Equals to
select * from employee_insurance where salary != 65000;



/*-----------------------------Logical Operator-------------------------------*/

/*

1. ALL --> ALL TRUE if all of the subquery values meet the condition	
2. AND --> AND TRUE if all the conditions separated by AND is TRUE	
3. ANY --> ANY TRUE if any of the subquery values meet the condition	
4. BETWEEN --> BETWEEN	TRUE if the operand is within the range of comparisons	
5. EXISTS --> EXISTS TRUE if the subquery returns one or more records	
6. IN --> IN TRUE if the operand is equal to one of a list of expressions	
7. LIKE --> LIKE TRUE if the operand matches a pattern	
8. NOT --> NOT	Displays a record if the condition(s) is NOT TRUE	
9. OR --> OR TRUE if any of the conditions separated by OR is TRUE	
10. SOME --> SOME TRUE if any of the subquery values meet the condition.

*/

select * from employee_insurance;

# -- And Operator

select Emp_FName, Salary, Designation from employee_insurance where Designation Like 'E%'
and Salary = 40000;


# -- OR Operator

select Emp_FName, Salary, Designation from employee_insurance where Designation = "Associate"
or Salary = 40000;

select Emp_FName, Salary, Designation from employee_insurance where Salary = 75000 or Salary = 85000
or Salary = 40000;


# -- IN 

select * from employee_insurance where City in ('Noida', 'Mumbai');

select * from employee_insurance where City not in ('Noida', 'Mumbai');


# -- Between

select * from employee_insurance where Salary between 40000 and 120000;


