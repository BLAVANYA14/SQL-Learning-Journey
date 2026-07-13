-- =====================================================
-- SQL LEARNING JOURNEY
-- Level 05 : Date Functions
-- Database : MySQL
-- Author   : Lavanya Bekkam
-- =====================================================

/*
=========================================================
TOPIC : DATE FUNCTIONS
=========================================================

Definition:
Date functions are used to extract, manipulate, compare,
and format date and time values stored in a database.

Common Date Functions:
• YEAR()
• MONTH()
• DAY()
• CURDATE()
• NOW()
• DATEDIFF()
• DATE_ADD()
• DATE_SUB()
• DATE_FORMAT()

Note:
Date functions are widely used for reports, employee
experience calculations, filtering records, and analytics.
*/


-- =====================================================
-- TOPIC 1 : YEAR()
-- =====================================================

/*
Definition:
Returns the year from a date.

Syntax:
YEAR(date_column)
*/

-- Question 1:
-- Display employee name along with joining year.

SELECT name,
       join_date,
       YEAR(join_date) AS joining_year
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display employees who joined in 2024.

SELECT *
FROM employees
WHERE YEAR(join_date)=2024;

---------------------------------------------------------

-- Question 3:
-- Display employees who joined after 2022.

SELECT *
FROM employees
WHERE YEAR(join_date)>2022;

---------------------------------------------------------

-- Question 4:
-- Display employees who joined before 2021.

SELECT *
FROM employees
WHERE YEAR(join_date)<2021;



-- =====================================================
-- TOPIC 2 : MONTH()
-- =====================================================

/*
Definition:
Returns the month from a date.

Syntax:
MONTH(date_column)
*/

-- Question 1:
-- Display employee name along with joining month.

SELECT name,
       MONTH(join_date) AS joining_month
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display employees who joined in January.

SELECT *
FROM employees
WHERE MONTH(join_date)=1;



-- =====================================================
-- TOPIC 3 : DAY()
-- =====================================================

/*
Definition:
Returns the day of the month.

Syntax:
DAY(date_column)
*/

-- Question 1:
-- Display employee name along with joining day.

SELECT name,
       DAY(join_date) AS joining_day
FROM employees;



-- =====================================================
-- TOPIC 4 : CURDATE()
-- =====================================================

/*
Definition:
Returns the current system date.

Syntax:
CURDATE()
*/

-- Question 1:
-- Display today's date.

SELECT CURDATE() AS today_date;



-- =====================================================
-- TOPIC 5 : NOW()
-- =====================================================

/*
Definition:
Returns the current date and time.

Syntax:
NOW()
*/

-- Question 1:
-- Display current date and time.

SELECT NOW() AS current_datetime;



-- =====================================================
-- TOPIC 6 : DATEDIFF()
-- =====================================================

/*
Definition:
Returns the difference in days between two dates.

Syntax:
DATEDIFF(date1,date2)
*/

-- Question 1:
-- Display the number of days each employee has worked.

SELECT name,
       join_date,
       DATEDIFF(CURDATE(),join_date) AS working_days
FROM employees;



-- =====================================================
-- TOPIC 7 : DATE_ADD()
-- =====================================================

/*
Definition:
Adds a specified time interval to a date.

Syntax:
DATE_ADD(date,INTERVAL value unit)
*/

-- Question 1:
-- Display the date after adding one year to the joining date.

SELECT name,
       join_date,
       DATE_ADD(join_date,INTERVAL 1 YEAR) AS next_year
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display the date after adding six months.

SELECT name,
       join_date,
       DATE_ADD(join_date,INTERVAL 6 MONTH) AS six_months_later
FROM employees;



-- =====================================================
-- TOPIC 8 : DATE_SUB()
-- =====================================================

/*
Definition:
Subtracts a specified interval from a date.

Syntax:
DATE_SUB(date,INTERVAL value unit)
*/

-- Question 1:
-- Display the date one month before joining.

SELECT name,
       join_date,
       DATE_SUB(join_date,INTERVAL 1 MONTH) AS previous_month
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display the date one year before joining.

SELECT name,
       join_date,
       DATE_SUB(join_date,INTERVAL 1 YEAR) AS previous_year
FROM employees;



-- =====================================================
-- TOPIC 9 : DATE_FORMAT()
-- =====================================================

/*
Definition:
Formats a date into a specified pattern.

Syntax:
DATE_FORMAT(date,'%format')
*/

-- Question 1:
-- Display joining date in DD-MM-YYYY format.

SELECT name,
       DATE_FORMAT(join_date,'%d-%m-%Y') AS formatted_date
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display joining date as Month Day, Year.

SELECT name,
       DATE_FORMAT(join_date,'%M %d, %Y') AS formatted_date
FROM employees;

---------------------------------------------------------

-- Question 3:
-- Display only Month and Year.

SELECT name,
       DATE_FORMAT(join_date,'%M %Y') AS joining_month
FROM employees;



-- =====================================================
-- MIXED PRACTICE QUESTIONS
-- =====================================================

-- Question 1:
-- Display employees who joined during the year 2023.

SELECT *
FROM employees
WHERE YEAR(join_date)=2023;

---------------------------------------------------------

-- Question 2:
-- Display employees who joined in February.

SELECT *
FROM employees
WHERE MONTH(join_date)=2;

---------------------------------------------------------

-- Question 3:
-- Display employee name, joining year and total working days.

SELECT name,
       YEAR(join_date) AS joining_year,
       DATEDIFF(CURDATE(),join_date) AS total_days
FROM employees;

---------------------------------------------------------

-- Question 4:
-- Display employee name along with one-year anniversary date.

SELECT name,
       DATE_ADD(join_date,INTERVAL 1 YEAR) AS anniversary
FROM employees;

---------------------------------------------------------

-- Question 5:
-- Display employees ordered by joining date.

SELECT name,
       join_date
FROM employees
ORDER BY join_date;

-- =====================================================
-- End of Date Functions
-- =====================================================
