-- =====================================================
-- SQL LEARNING JOURNEY
-- Level 03 : Aggregate Functions
-- Database : MySQL
-- Author   : Lavanya Bekkam
-- =====================================================

/*
=========================================================
TOPIC 1 : COUNT()
=========================================================

Definition:
COUNT() returns the total number of rows that satisfy
the given condition.

Syntax:
SELECT COUNT(column_name)
FROM table_name;

Note:
COUNT(*) counts all rows, including NULL values in other
columns.
*/

-- Question 1:
-- Find the total number of employees.

SELECT COUNT(*)
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Count the number of employees in the IT department.

SELECT COUNT(*)
FROM employees
WHERE department = 'IT';



/*
=========================================================
TOPIC 2 : SUM()
=========================================================

Definition:
SUM() returns the total of all values in a numeric column.

Syntax:
SELECT SUM(column_name)
FROM table_name;

Note:
SUM() works only with numeric columns.
*/

-- Question 1:
-- Find the total salary paid to all employees.

SELECT SUM(salary)
FROM employees;



/*
=========================================================
TOPIC 3 : AVG()
=========================================================

Definition:
AVG() returns the average value of a numeric column.

Syntax:
SELECT AVG(column_name)
FROM table_name;

Note:
NULL values are ignored while calculating the average.
*/

-- Question 1:
-- Find the average salary of all employees.

SELECT AVG(salary)
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Find the average salary of employees in Hyderabad.

SELECT AVG(salary)
FROM employees
WHERE city = 'Hyderabad';



/*
=========================================================
TOPIC 4 : MAX()
=========================================================

Definition:
MAX() returns the highest value in a column.

Syntax:
SELECT MAX(column_name)
FROM table_name;
*/

-- Question 1:
-- Find the highest salary.

SELECT MAX(salary)
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Find the highest salary in the HR department.

SELECT MAX(salary)
FROM employees
WHERE department = 'HR';



/*
=========================================================
TOPIC 5 : MIN()
=========================================================

Definition:
MIN() returns the smallest value in a column.

Syntax:
SELECT MIN(column_name)
FROM table_name;
*/

-- Question 1:
-- Find the minimum salary.

SELECT MIN(salary)
FROM employees;



/*
=========================================================
TOPIC 6 : GROUP BY
=========================================================

Definition:
GROUP BY groups rows having the same values into a single
summary row.

Syntax:
SELECT column_name,
       aggregate_function(column_name)
FROM table_name
GROUP BY column_name;

Note:
Every selected column must either be grouped or be an
aggregate.
*/

-- Question 1:
-- Count employees in each department.

SELECT department,
       COUNT(*) AS total_employees
FROM employees
GROUP BY department;

---------------------------------------------------------

-- Question 2:
-- Find the average salary of each department.

SELECT department,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department;

---------------------------------------------------------

-- Question 3:
-- Find the highest salary in each department.

SELECT department,
       MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

---------------------------------------------------------

-- Question 4:
-- Find the minimum salary in each department.

SELECT department,
       MIN(salary) AS minimum_salary
FROM employees
GROUP BY department;

---------------------------------------------------------

-- Question 5:
-- Find the total salary of each department.

SELECT department,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department;

---------------------------------------------------------

-- Question 6:
-- Count employees in each city.

SELECT city,
       COUNT(*) AS total_employees
FROM employees
GROUP BY city;

---------------------------------------------------------

-- Question 7:
-- Find the average age of employees in each department.

SELECT department,
       AVG(age) AS average_age
FROM employees
GROUP BY department;

---------------------------------------------------------

-- Question 8:
-- Find the highest salary in each city.

SELECT city,
       MAX(salary) AS highest_salary
FROM employees
GROUP BY city;



/*
=========================================================
TOPIC 7 : HAVING
=========================================================

Definition:
HAVING filters grouped data after applying GROUP BY.

Syntax:
SELECT column_name,
       aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;

Note:
WHERE filters rows before grouping.
HAVING filters groups after grouping.
*/

-- Question 1:
-- Display departments having more than 2 employees.

SELECT department
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

---------------------------------------------------------

-- Question 2:
-- Display cities having more than 2 employees.

SELECT city
FROM employees
GROUP BY city
HAVING COUNT(*) > 2;

---------------------------------------------------------

-- Question 3:
-- Display departments whose average salary is greater than 70000.

SELECT department
FROM employees
GROUP BY department
HAVING AVG(salary) > 70000;

---------------------------------------------------------

-- Question 4:
-- Display cities whose highest salary is greater than 80000.

SELECT city
FROM employees
GROUP BY city
HAVING MAX(salary) > 80000;

---------------------------------------------------------

-- Question 5:
-- Display departments whose total salary is greater than 200000.

SELECT department
FROM employees
GROUP BY department
HAVING SUM(salary) > 200000;

---------------------------------------------------------

-- Question 6:
-- Display cities having exactly 2 employees.

SELECT city
FROM employees
GROUP BY city
HAVING COUNT(*) = 2;

---------------------------------------------------------

-- Question 7:
-- Display departments whose minimum salary is less than 50000.

SELECT department
FROM employees
GROUP BY department
HAVING MIN(salary) < 50000;

---------------------------------------------------------

-- Question 8:
-- Display departments having more than 2 employees and an average salary greater than 60000.

SELECT department,
       COUNT(*) AS total_employees,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 2
AND AVG(salary) > 60000;

-- =====================================================
-- End of Level 03 : Aggregate Functions
-- =====================================================
