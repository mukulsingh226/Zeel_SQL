use SBI;

# --- String Functions


 # 1. String Concat
 
/*
In MySQL, CONCAT() is a string function used to combine (concatenate) two or more strings into a single string.
*/

 select concat('Mukul ', 'Singh');
 
 select concat('Mukul ', 'Avdhesh ','Singh');
 
 select * from employee;
 
 select Emp_ID, Emp_Name, concat(Designation , ' - ', Dept) as Job_Role from employee;
 
 
 # 2. Concat_ws
 
 select concat_ws('-', 'Mukul ', ' Singh');
 select concat_ws('-' , 'Hi ', ' Hello ', ' Namaste');
 
 
 select concat_ws(' - ' , Emp_ID, Emp_Name, Designation, dept) as Employee_Details from employee;
 
 # 3. Substring
 
 /*
 In MySQL, SUBSTRING() is a string function used to extract a part of a string starting at a specified position, with an optional length.
 */
 
 
 select substring('Hello', 1,4); #-- Hell
 
 select substring("Mukul Singh", 6, 11);  #-- " Singh"
 
  select substring("Mukul Avdhesh Singh", 6); # -- " Avdhesh Singh"
  
  # -- Substring in Reverse
  
 select substring("Mukul Avdhesh Singh", -6); # -- " Singh"
 
 
 # -- Using with emp_id of employee table
 
 select substring(Emp_ID, 2,3) from employee;
 
 # -- Replace Functions

/*
In MySQL, the REPLACE() function is used to search for a substring within a string and replace it with another substring.
*/ 

select replace('Hey Buddy', 'Hey', 'Hello');
select * from employee;

select replace (Emp_name, 'Manish', 'Kamlesh') as Updated_Emp_Name from employee;
 