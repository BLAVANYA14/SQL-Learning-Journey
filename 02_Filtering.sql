-- =====================================================
-- SQL LEARNING JOURNEY
-- Level 02 : Filtering Data
-- Database : MySQL
-- Author   : Lavanya Bekkam
-- =====================================================

/*
=========================================================
TOPIC 1 : AND Operator
=========================================================

Definition:
The AND operator is used to combine multiple conditions.
A record is returned only if all the conditions are TRUE.

Syntax:
SELECT column_name
FROM table_name
WHERE condition1 AND condition2;

Note:
Use AND when every condition must be satisfied.
*/

-- Question 1:
-- Display employees who work in the IT department and earn more than 75000.

SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 75000;

---------------------------------------------------------

-- Question 2:
-- Display employees from Hyderabad whose age is greater than 25.

SELECT *
FROM employees
WHERE city = 'Hyderabad'
AND age > 25;

---------------------------------------------------------

-- Question 3:
-- Display Sales employees whose salary is greater than 50000.

SELECT name, salary
FROM employees
WHERE department = 'Sales'
AND salary > 50000;

---------------------------------------------------------

-- Question 4:
-- Display employees whose age is greater than 25 and salary is less than 80000.

SELECT *
FROM employees
WHERE age > 25
AND salary < 80000;

---------------------------------------------------------

-- Question 5:
-- Display employees from Hyderabad whose salary is greater than or equal to 70000.

SELECT *
FROM employees
WHERE city = 'Hyderabad'
AND salary >= 70000;



/*
=========================================================
TOPIC 2 : OR Operator
=========================================================

Definition:
The OR operator returns records if at least one of the
specified conditions is TRUE.

Syntax:
SELECT column_name
FROM table_name
WHERE condition1 OR condition2;

Note:
Use OR when any one condition being TRUE is sufficient.
*/

-- Question 1:
-- Display employees working in either HR or Finance.

SELECT *
FROM employees
WHERE department = 'HR'
OR department = 'Finance';

---------------------------------------------------------

-- Question 2:
-- Display employees from Mumbai or Chennai.

SELECT *
FROM employees
WHERE city = 'Mumbai'
OR city = 'Chennai';

---------------------------------------------------------

-- Question 3:
-- Display employees working in IT or Marketing.

SELECT name
FROM employees
WHERE department = 'IT'
OR department = 'Marketing';



/*
=========================================================
TOPIC 3 : BETWEEN Operator
=========================================================

Definition:
BETWEEN is used to filter values within a specified range.
The range is inclusive.

Syntax:
SELECT column_name
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

Note:
BETWEEN includes both starting and ending values.
*/

-- Question 1:
-- Display employees whose salary is between 50000 and 80000.

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 80000;

---------------------------------------------------------

-- Question 2:
-- Display employees whose age is between 25 and 30.

SELECT *
FROM employees
WHERE age BETWEEN 25 AND 30;

---------------------------------------------------------

-- Question 3:
-- Display employee names whose salary is between 60000 and 90000.

SELECT name
FROM employees
WHERE salary BETWEEN 60000 AND 90000;

---------------------------------------------------------

-- Question 4:
-- Display employees whose employee ID is between 5 and 10.

SELECT *
FROM employees
WHERE emp_id BETWEEN 5 AND 10;

---------------------------------------------------------

-- Question 5:
-- Display IT employees whose salary is between 70000 and 90000.

SELECT *
FROM employees
WHERE department = 'IT'
AND salary BETWEEN 70000 AND 90000;

---------------------------------------------------------

-- Question 6:
-- Display employees from Hyderabad whose age is between 23 and 28.

SELECT *
FROM employees
WHERE city = 'Hyderabad'
AND age BETWEEN 23 AND 28;

---------------------------------------------------------

-- Question 7:
-- Display employees whose salary is NOT between 50000 and 70000.

SELECT *
FROM employees
WHERE salary NOT BETWEEN 50000 AND 70000;



/*
=========================================================
TOPIC 4 : IN Operator
=========================================================

Definition:
The IN operator is used to compare a value against
multiple values.

Syntax:
SELECT column_name
FROM table_name
WHERE column_name IN(value1,value2,...);

Note:
IN is cleaner than using multiple OR conditions.
*/

-- Question 1:
-- Display employees from IT, HR and Finance departments.

SELECT *
FROM employees
WHERE department IN ('IT','HR','Finance');

---------------------------------------------------------

-- Question 2:
-- Display employees from Hyderabad, Mumbai and Delhi.

SELECT *
FROM employees
WHERE city IN ('Hyderabad','Mumbai','Delhi');

---------------------------------------------------------

-- Question 3:
-- Display employees whose employee IDs are 2, 5, 8 and 10.

SELECT name
FROM employees
WHERE emp_id IN (2,5,8,10);

---------------------------------------------------------

-- Question 4:
-- Display employees who are not in IT or Sales departments.

SELECT *
FROM employees
WHERE department NOT IN ('IT','Sales');

---------------------------------------------------------

-- Question 5:
-- Display employees from HR, Finance and Marketing sorted by salary.

SELECT name, salary
FROM employees
WHERE department IN ('HR','Finance','Marketing')
ORDER BY salary DESC;

---------------------------------------------------------

-- Question 6:
-- Display employees whose city is not Hyderabad, Chennai or Bangalore.

SELECT *
FROM employees
WHERE city NOT IN ('Hyderabad','Chennai','Bangalore');

---------------------------------------------------------

-- Question 7:
-- Display employees whose age is either 25, 27 or 30.

SELECT *
FROM employees
WHERE age IN (25,27,30);

---------------------------------------------------------

-- Question 8:
-- Display employees from HR or IT with salaries between 60000 and 90000.

SELECT *
FROM employees
WHERE department IN ('HR','IT')
AND salary BETWEEN 60000 AND 90000
ORDER BY salary DESC;



/*
=========================================================
TOPIC 5 : LIKE Operator
=========================================================

Definition:
LIKE is used to search for a specified pattern in text.

Syntax:
SELECT column_name
FROM table_name
WHERE column_name LIKE pattern;

Note:
%  -> Any number of characters
_  -> Exactly one character
*/

-- Question 1:
-- Display employees whose names start with A.

SELECT *
FROM employees
WHERE name LIKE 'A%';

---------------------------------------------------------

-- Question 2:
-- Display employees whose names end with a.

SELECT *
FROM employees
WHERE name LIKE '%a';

---------------------------------------------------------

-- Question 3:
-- Display employees whose city starts with H.

SELECT *
FROM employees
WHERE city LIKE 'H%';

---------------------------------------------------------

-- Question 4:
-- Display departments containing the letter 'a'.

SELECT *
FROM employees
WHERE department LIKE '%a%';

---------------------------------------------------------

-- Question 5:
-- Display employees whose names contain 'an'.

SELECT *
FROM employees
WHERE name LIKE '%an%';

---------------------------------------------------------

-- Question 6:
-- Display cities ending with 'i'.

SELECT *
FROM employees
WHERE city LIKE '%i';

---------------------------------------------------------

-- Question 7:
-- Display employees whose names contain exactly five characters.

SELECT *
FROM employees
WHERE name LIKE '_____';

---------------------------------------------------------

-- Question 8:
-- Display employees whose names start with A and whose salary is greater than 70000.

SELECT *
FROM employees
WHERE name LIKE 'A%'
AND salary > 70000
ORDER BY salary DESC;



/*
=========================================================
TOPIC 6 : IS NULL
=========================================================

Definition:
IS NULL is used to retrieve records where a column
contains NULL values.

Syntax:
SELECT column_name
FROM table_name
WHERE column_name IS NULL;

Note:
NULL represents missing or unknown information.
*/

-- Question 1:
-- Display employees whose phone number is missing.

SELECT *
FROM employees
WHERE phone IS NULL;

---------------------------------------------------------

-- Question 2:
-- Display employees without a manager.

SELECT *
FROM employees
WHERE manager_id IS NULL;

---------------------------------------------------------

-- Question 3:
-- Display employees whose phone number or email is missing.

SELECT *
FROM employees
WHERE phone IS NULL
OR email IS NULL;

---------------------------------------------------------

-- Question 4:
-- Display HR and Finance employees whose email is missing.

SELECT name, department, email
FROM employees
WHERE department IN ('HR','Finance')
AND email IS NULL
ORDER BY name;



/*
=========================================================
TOPIC 7 : IS NOT NULL
=========================================================

Definition:
IS NOT NULL returns records where a column contains
a value.

Syntax:
SELECT column_name
FROM table_name
WHERE column_name IS NOT NULL;
*/

-- Question 1:
-- Display employees whose email is available.

SELECT *
FROM employees
WHERE email IS NOT NULL;

---------------------------------------------------------

-- Question 2:
-- Display employee names and phone numbers where phone is available.

SELECT name, phone
FROM employees
WHERE phone IS NOT NULL;

---------------------------------------------------------

-- Question 3:
-- Display IT employees whose email is available.

SELECT *
FROM employees
WHERE department = 'IT'
AND email IS NOT NULL;

---------------------------------------------------------

-- Question 4:
-- Display employees having a manager and salary greater than 60000.

SELECT *
FROM employees
WHERE manager_id IS NOT NULL
AND salary > 60000
AND phone IS NOT NULL;

-- =====================================================
-- End of Level 02 : Filtering Data
-- =====================================================
