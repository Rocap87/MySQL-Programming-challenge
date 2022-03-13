mysql;
USE COMPANY1;


---------SOLUTION TO OUTCOME 1---------
/* Select the employee name, department name 
and salary columns and rename the columns. 
Perform inner join between the employee table
and the department table, match
the department number of employee table to
the department number of the department table,
filter salaries between 1000 and 2000 */
SELECT ENAME AS EMPLOYEE_NAME,
DNAME AS DEPARTMENT,
SAL AS SALARY
FROM EMP
JOIN DEPT
ON EMP.DEPTNO = DEPT.DEPTNO
WHERE SAL BETWEEN 1000 AND 2000;

---------ALTERNATIVE SOLUTION TO OUTCOME 1---------
/* Select the employee name, department number 
and salary columns in the employee table,
rename the columns and filter results
for salaries between 1000 and 2000*/
SELECT ENAME AS EMPLOYEE_NAME,
DEPTNO AS DEPARTMENT,
SAL AS SALARY
FROM EMP
WHERE SAL BETWEEN 1000 AND 2000;


---------SOLUTION TO OUTCOME 2---------
/* Select a column where you count the 
salaries and one where you count the commissions
in the employee table and rename the columns.
Filter to have the results where the department 
number is 30*/
SELECT COUNT(SAL) AS EMPLOYEE_RECEIVING_SALARY,
COUNT(COMM) AS EMPLOYEE_RECEIVING_COMMISSION
FROM EMP WHERE DEPTNO = 30;


---------SOLUTION TO OUTCOME 3---------
/* Select the columns employee name and salary
in the employee table and rename the columns.
Join the employee table with the department table,
match the department number of employee table to
the department number of the department table.
Filter to have the results where the department 
location corresponds to Dallas*/
SELECT ENAME AS EMPLOYEE_NAME,
SAL AS SALARY
FROM EMP
JOIN DEPT
ON EMP.DEPTNO = DEPT.DEPTNO
WHERE DEPT.LOC = 'DALLAS';

---------ALTERNATIVE SOLUTION TO OUTCOME 3---------
/* Select the columns employee name and salary
in the employee table and rename the columns.
Join the employee table with the department table,
match the department number of employee table to
the department number of the department table.
Filter to have the results where the department 
number of the department table corresponds to 20*/
SELECT ENAME AS EMPLOYEE_NAME,
SAL AS SALARY
FROM EMP
JOIN DEPT
ON EMP.DEPTNO = DEPT.DEPTNO
WHERE DEPT.DEPTNO = 20;


---------SOLUTION TO OUTCOME 4---------
/* Select the department name column from the 
department table and rename it. Do a left join
of the department table with the employee table,
match the department number of the department table to
the department number of the employee table.
Group the results by department name having the count
of employees corresponding to 0*/
SELECT DNAME AS DEPARTMENT_WITH_NO_EMPLOYEE
FROM DEPT
LEFT JOIN EMP
ON DEPT.DEPTNO = EMP.DEPTNO
GROUP BY DNAME HAVING COUNT(ENAME) = 0;

---------ALTERNATIVE SOLUTION 1 TO OUTCOME 4---------
/* Select the department name column from the 
department table and rename it. Do a left join
of the department table with the employee table,
matching the department number of department table to
the department number of the employee table.
Filter the results for the department number of 
the employee table that IS NULL*/
SELECT DNAME AS DEPARTMENT_WITH_NO_EMPLOYEE
FROM DEPT
LEFT JOIN EMP
ON DEPT.DEPTNO = EMP.DEPTNO
WHERE EMP.DEPTNO IS NULL;

---------ALTERNATIVE SOLUTION 2 TO OUTCOME 4---------
/* Select the department name column from the 
department table and rename it.
Filter the results for the department number that is 
not present in the department number column
of the employee table (use a NOT IN (SELECT ....))*/
SELECT DNAME AS DEPARTMENT_WITH_NO_EMPLOYEE
FROM DEPT
WHERE DEPTNO
NOT IN (SELECT DEPTNO FROM EMP);

---------SOLUTION TO OUTCOME 5---------
/* Select the column department number of the
department table and create a column containing the 
average salary. Rename the average salary column.
The column is created from a table obtained by doing a 
left join between the department table and the employee 
table, matching the department number of the department 
table to the department number of the employee table. 
Group the results by the department number.*/
SELECT DEPT.DEPTNO,
AVG(SAL) AS AVERAGE_SALARY_DEPARTMENT
FROM DEPT
LEFT JOIN EMP
ON DEPT.DEPTNO = EMP.DEPTNO
GROUP BY DEPTNO;