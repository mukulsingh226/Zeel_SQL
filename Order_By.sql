use SBI;
# --- Order By

/*
The ORDER BY keyword is used to sort the result-set in ascending or descending order.
The ORDER BY keyword sorts the records in ascending order by default.
 To sort the records in descending order, use the DESC keyword.
*/

SELECT * FROM employee_insurance;

select emp_id from employee_insurance order by emp_id DESC;
select emp_id, Emp_FName from employee_insurance order by emp_id DESC;
