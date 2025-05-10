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
 In MySQL, SUBSTRING() is a string function used to extract a part of a string starting 
 at a specified position, with an optional length.
 */
 
 
 select substring('Hello', 1,4); #-- Hell
 
 select substring("Mukul Singh", 6, 11);  #-- " Singh"
 
  select substring("Mukul Avdhesh Singh", 6); # -- " Avdhesh Singh"
  
  # -- 4. Substring in Reverse
  
 select substring("Mukul Avdhesh Singh", -6); # -- " Singh"
 
 
 # -- 5. Using with emp_id of employee table
 
 select substring(Emp_ID, 2,3) from employee;
 
 # -- 6. Replace Functions

/*
In MySQL, the REPLACE() function is used to search for a 
substring within a string and replace it with another substring.
*/ 

select replace('Hey Buddy', 'Hey', 'Hello');
select * from employee;

select replace (Emp_name, 'Manish', 'Kamlesh') as Updated_Emp_Name from employee;

select * from Employee;

# --- 7. Reverse Function

/*
the REVERSE() function is a string function 
that reverses the characters in a given string and returns the reversed str
*/

select reverse("Mukul Singh");

select reverse(emp_name) from employee;

# --- 8. Upper and Lower Case

/*
UPPER() and LOWER() are string functions used to convert strings to uppercase and lowercase, respectively.
UPPER() converts all characters in a string to uppercase letters, 
while LOWER() converts all characters to lowercase letters. 
*/

select upper("Mukul") as Name_in_Capital;

select lower("RAVI")as Name_in_Lower;

# --- 9. Char Length


/*
In MySQL, CHAR_LENGTH() (or its synonym, CHARACTER_LENGTH()) is a 
string function that returns the number of characters in a string.
*/

select char_length("Mukul"); # -- 5

select emp_name, char_length(emp_name) from employee as Name_length;

# --- 10. Insert

select insert("Mukul Singh", 7, 0, " Avdhesh ") as Full_Name;

# --- 11. Left

select left("Ravi Singh", 4) as Letter_from_left; # --- Ravi

select right("Ravi Singh", 2) as Letter_from_right; #-- gh

select repeat("Mukul Singh, ", 4) as Repeat_Name;

select trim("   Mukul   ") as trim_space;














