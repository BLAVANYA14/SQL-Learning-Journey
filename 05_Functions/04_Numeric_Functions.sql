-- =====================================================
-- SQL LEARNING JOURNEY
-- Level 05 : Numeric Functions
-- Database : MySQL
-- Author   : Lavanya Bekkam
-- =====================================================

/*
=========================================================
TOPIC : NUMERIC FUNCTIONS
=========================================================

Definition:
Numeric functions perform mathematical calculations on
numeric values.

Common Functions:
• ROUND()
• CEIL()
• FLOOR()
• ABS()
• MOD()
• POWER()
• SQRT()
• RAND()

Note:
These functions are widely used in reports, analytics,
calculations, and data processing.
*/

-- =====================================================
-- TOPIC 1 : ROUND()
-- =====================================================

/*
Definition:
Rounds a number to the specified number of decimal places.

Syntax:
ROUND(number,decimal_places)
*/

-- Question 1:
-- Find the average salary rounded to 2 decimal places.

SELECT ROUND(AVG(salary),2) AS average_salary
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display salary in thousands rounded to one decimal place.

SELECT name,
       salary,
       ROUND(salary/1000,1) AS salary_in_thousands
FROM employees;

---------------------------------------------------------

-- Question 3:
-- Find the average salary of each department rounded to 2 decimals.

SELECT department,
       ROUND(AVG(salary),2) AS average_salary
FROM employees
GROUP BY department;





-- =====================================================
-- TOPIC 2 : CEIL()
-- =====================================================

/*
Definition:
Returns the smallest integer greater than or equal to a number.

Syntax:
CEIL(number)
*/

-- Question 1:
-- Round salary (in thousands) upward.

SELECT name,
       salary,
       CEIL(salary/1000) AS rounded_up
FROM employees;





-- =====================================================
-- TOPIC 3 : FLOOR()
-- =====================================================

/*
Definition:
Returns the largest integer less than or equal to a number.

Syntax:
FLOOR(number)
*/

-- Question 1:
-- Round salary (in thousands) downward.

SELECT name,
       salary,
       FLOOR(salary/1000) AS rounded_down
FROM employees;





-- =====================================================
-- TOPIC 4 : ABS()
-- =====================================================

/*
Definition:
Returns the absolute value of a number.

Syntax:
ABS(number)
*/

-- Question 1:
-- Find the absolute value.

SELECT ABS(-3500) AS absolute_value;





-- =====================================================
-- TOPIC 5 : MOD()
-- =====================================================

/*
Definition:
Returns the remainder after division.

Syntax:
MOD(number,divisor)
*/

-- Question 1:
-- Find the remainder when 125 is divided by 12.

SELECT MOD(125,12) AS remainder;





-- =====================================================
-- TOPIC 6 : POWER()
-- =====================================================

/*
Definition:
Raises a number to the specified power.

Syntax:
POWER(base,exponent)
*/

-- Question 1:
-- Calculate 5 raised to the power of 3.

SELECT POWER(5,3) AS result;





-- =====================================================
-- TOPIC 7 : SQRT()
-- =====================================================

/*
Definition:
Returns the square root of a number.

Syntax:
SQRT(number)
*/

-- Question 1:
-- Find the square root of 625.

SELECT SQRT(625) AS square_root;





-- =====================================================
-- TOPIC 8 : RAND()
-- =====================================================

/*
Definition:
Generates a random number between 0 and 1.

Syntax:
RAND()
*/

-- Question 1:
-- Generate a random number.

SELECT RAND() AS random_number;

---------------------------------------------------------

-- Question 2:
-- Display employees in random order.

SELECT *
FROM employees
ORDER BY RAND();





-- =====================================================
-- MIXED PRACTICE
-- =====================================================

-- Question 1:
-- Find average salary rounded to the nearest integer.

SELECT ROUND(AVG(salary)) AS average_salary
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display salary rounded up and down.

SELECT name,
       salary,
       CEIL(salary/1000) AS rounded_up,
       FLOOR(salary/1000) AS rounded_down
FROM employees;

---------------------------------------------------------

-- Question 3:
-- Find the square root of employee IDs.

SELECT emp_id,
       SQRT(emp_id) AS square_root
FROM employees;

---------------------------------------------------------

-- Question 4:
-- Calculate salary squared.

SELECT name,
       POWER(salary,2) AS salary_square
FROM employees;

---------------------------------------------------------

-- Question 5:
-- Display a random sample of 5 employees.

SELECT *
FROM employees
ORDER BY RAND()
LIMIT 5;

-- =====================================================
-- End of Numeric Functions
-- =====================================================
