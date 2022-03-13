# MySQL-Programming-challenge
MySQL programming challenge of Launching into computer science

The following instructions describe how to obtain the outcomes required by the assignment. In some cases alternative solutions are supplied.
To run the script assignment3.sql, “mysql” needs to be executed and the database COMPANY1 is required.


# OUTCOME 1: List all Employees whose salary is between 1,000 AND 2,000. Show all the Employee Name, Department and Salary.

The primary solution for this outcome is obtained by using data from the employee table and the department table:

• SELECT the columns employee name, department name, and salary from the EMP table. For readability the columns are renamed EMPLOYEE_NAME, DEPARTMENT and SALARY, respectively.

• Perform an inner join with the DEPT table and match the two tables by their department number columns.

• Use the WHERE clause to filter for salaries between 1000 and 2000.

The expected result is a table with three columns containing the employee names, the department names where each employee works and the salary of each of those employees.



An alternative solution to the above outcome is given by using only the employee table. Instead of the department name, the department number is obtained:

• SELECT the columns employee name, department number, and salary from the EMP table. For readability the columns are renamed EMPLOYEE_NAME,
DEPARTMENT and SALARY, respectively.

• Use the WHERE clause to filter the salaries between 1000 and 2000

The expected result is a table with three columns containing the employee names, the department numbers where each employee works and the salary of each of those employees.


# OUTCOME 2: Count the number of people in department 30 who receive a salary and the number of people who receive a commission.

The solution of this outcome is obtained by filtering in the employee table with the following script:

• SELECT and COUNT the entries of salaries and commissions from the EMP table. Rename the two new columns EMPLOYEE_RECEIVING_SALARY and EMPLOYEE_RECEIVING_COMMISSIONS, respectively, for readability.
• tUse the WHERE clause to filter for the number of employees working in department 30.
The result is a table with two columns and one row displaying the number of employees in department 30 receiving a salary and those receiving a commission.


# OUTCOME 3: Find the name and salary of employees in Dallas.

The primary solution to this outcome is obtained by selecting columns from the employee and department table:

• SELECT the column employee name renamed as EMPLOYEE_NAME and the column salary renamed as SALARY from the EMP table.
• JOIN this with the DEPT table and match the two tables by their department number columns.
• Use a WHERE clause to filter the result by the department location 'DALLAS'.
The result is a table with two columns displaying all the employee names and their respective salaries.


The same outcome can be obtained with an alternative approach taking advantage of the fact that only the research department works in Dallas, which has the department number 20. In the last step the WHERE clause is used to filter the table for the department number:

• SELECT the column employee name renamed as EMPLOYEE_NAME and the column salary renamed as SALARY from the EMP table.
• JOIN the table with the DEPT table and match the tables by the department numbers.
• Use a WHERE clause to filter for department number 20.


# OUTCOME 4: List all departments that do not have any employees.

The primary solution is obtained by performing a LEFT JOIN between the DEPT and the EMP table, and using an aggregate function:

• SELECT the department name and rename it as DEPARTMENT_WITH_NO_EMPLOYEE from the DEPT table.
• LEFT JOIN the table to the EMP table and match the two tables by their department number columns.
• GROUP BY the new table by the department names HAVING a count of 0 employees working in the department.
The result is a table showing the name of the department with no current employees.

The same outcome can be obtained by using a two different approaches. The first alternative approach is similar to the primary solution with the difference that a WHERE clause is used instead of GROUP BY:

• SELECT the department name and rename it as DEPARTMENT_WITH_NO_EMPLOYEE from the DEPT table.
• LEFT JOIN the table with the EMP table and match the two tables by their department number columns.
• Use a WHERE clause to filter the result for the employee department number that IS NULL.

The second alternative solution selects the name of the department that has no entries in the EMP table. This approach takes advantage of the fact that no entries in the EMP table means that the department has no employees:

• SELECT department name and rename it as DEPARTMENT_WITH_NO_EMPLOYEE from the DEPT table.
• Use a WHERE clause filtering for the department number that is NOT IN the the department number column of the EMP table.


# OUTCOME 5: List all department number and average salary of each department. The solution is obtained by using a LEFT JOIN between department table and the employee table:

• SELECT the column department number from the department table.
• Calculate the average of the salary column renamed as
AVERAGE_SALARY_DEPARTMENT taken from the new table created by using LEFT JOIN on the DEPT table and EMP table, matching the tables by their department number.
• GROUP BY the department number.
The result is a table containing two columns with the first column containing the four
department numbers and the second column displaying the average salary of each department.
