-- =====================================================
-- SQL LEARNING JOURNEY
-- Level 05 : String Functions
-- Database : MySQL
-- Author   : Lavanya Bekkam
-- =====================================================

/*
=========================================================
TOPIC : STRING FUNCTIONS
=========================================================

Definition:
String functions are used to manipulate, modify,
extract, and analyze text data stored in character
columns.

Common String Functions:
• UPPER()
• LOWER()
• LENGTH()
• CONCAT()
• LEFT()
• RIGHT()
• SUBSTRING()
• TRIM()
• REPLACE()
• REVERSE()

Note:
String functions are commonly used for formatting,
searching, reporting, and cleaning textual data.
*/


-- =====================================================
-- TOPIC 1 : UPPER()
-- =====================================================

/*
Definition:
Converts all characters to uppercase.

Syntax:
UPPER(column_name)
*/

-- Question 1:
-- Display employee names in uppercase.

SELECT name,
       UPPER(name) AS upper_name
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display department names in uppercase.

SELECT department,
       UPPER(department) AS upper_department
FROM employees;



-- =====================================================
-- TOPIC 2 : LOWER()
-- =====================================================

/*
Definition:
Converts all characters to lowercase.

Syntax:
LOWER(column_name)
*/

-- Question 1:
-- Display employee names in lowercase.

SELECT name,
       LOWER(name) AS lower_name
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display cities in lowercase.

SELECT city,
       LOWER(city) AS lower_city
FROM employees;



-- =====================================================
-- TOPIC 3 : LENGTH()
-- =====================================================

/*
Definition:
Returns the number of characters in a string.

Syntax:
LENGTH(column_name)
*/

-- Question 1:
-- Find the length of each employee's name.

SELECT name,
       LENGTH(name) AS total_characters
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Find the length of each department name.

SELECT department,
       LENGTH(department) AS department_length
FROM employees;



-- =====================================================
-- TOPIC 4 : CONCAT()
-- =====================================================

/*
Definition:
Joins two or more strings into one.

Syntax:
CONCAT(value1, value2, ...)
*/

-- Question 1:
-- Display employee name and department.

SELECT CONCAT(name,' works in ',department)
AS employee_information
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display employee name and city.

SELECT CONCAT(name,' from ',city)
AS employee_details
FROM employees;

---------------------------------------------------------

-- Question 3:
-- Display employee details.

SELECT CONCAT('Employee: ',name,
              ' | Department: ',department)
AS employee_profile
FROM employees;

---------------------------------------------------------

-- Question 4:
-- Display employee name, department and city.

SELECT CONCAT(name,' (',
              department,
              ') - ',
              city)
AS employee_summary
FROM employees;



-- =====================================================
-- TOPIC 5 : LEFT()
-- =====================================================

/*
Definition:
Returns the specified number of characters from the left.

Syntax:
LEFT(column_name,n)
*/

-- Question 1:
-- Display the first four characters of employee names.

SELECT name,
       LEFT(name,4) AS first_four
FROM employees;



-- =====================================================
-- TOPIC 6 : RIGHT()
-- =====================================================

/*
Definition:
Returns the specified number of characters from the right.

Syntax:
RIGHT(column_name,n)
*/

-- Question 1:
-- Display the last three characters of employee names.

SELECT name,
       RIGHT(name,3) AS last_three
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display the last three characters of city names.

SELECT city,
       RIGHT(city,3) AS last_three
FROM employees;



-- =====================================================
-- TOPIC 7 : SUBSTRING()
-- =====================================================

/*
Definition:
Extracts part of a string.

Syntax:
SUBSTRING(column_name,start,length)
*/

-- Question 1:
-- Extract two characters starting from the second character.

SELECT name,
       SUBSTRING(name,2,2) AS extracted_text
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Extract the first three characters of department names.

SELECT department,
       SUBSTRING(department,1,3) AS short_department
FROM employees;



-- =====================================================
-- TOPIC 8 : TRIM()
-- =====================================================

/*
Definition:
Removes leading and trailing spaces.

Syntax:
TRIM(column_name)
*/

-- Question 1:
-- Remove extra spaces from employee names.

SELECT name,
       TRIM(name) AS cleaned_name
FROM employees;



-- =====================================================
-- TOPIC 9 : REPLACE()
-- =====================================================

/*
Definition:
Replaces a specified substring with another substring.

Syntax:
REPLACE(column_name,'old','new')
*/

-- Question 1:
-- Replace Hyderabad with HYD.

SELECT city,
       REPLACE(city,'Hyderabad','HYD')
AS updated_city
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Replace IT with Information Technology.

SELECT department,
       REPLACE(department,
               'IT',
               'Information Technology')
AS updated_department
FROM employees;



-- =====================================================
-- TOPIC 10 : REVERSE()
-- =====================================================

/*
Definition:
Reverses the characters in a string.

Syntax:
REVERSE(column_name)
*/

-- Question 1:
-- Reverse employee names.

SELECT name,
       REVERSE(name) AS reversed_name
FROM employees;



-- =====================================================
-- MIXED PRACTICE QUESTIONS
-- =====================================================

-- Question 1:
-- Display first three letters of employee name followed by
-- the last four letters of the city.

SELECT CONCAT(
       LEFT(name,3),
       '...',
       RIGHT(city,4))
AS employee_info
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display employee name in uppercase and city in lowercase.

SELECT UPPER(name) AS employee_name,
       LOWER(city) AS city
FROM employees;

---------------------------------------------------------

-- Question 3:
-- Display employee initials.

SELECT CONCAT(
       LEFT(name,1),
       '.')
AS initials
FROM employees;

---------------------------------------------------------

-- Question 4:
-- Display the number of characters in each city.

SELECT city,
       LENGTH(city) AS total_characters
FROM employees;

---------------------------------------------------------

-- Question 5:
-- Display employee name and its reverse.

SELECT name,
       REVERSE(name) AS reverse_name
FROM employees;

-- =====================================================
-- End of String Functions
-- =====================================================
