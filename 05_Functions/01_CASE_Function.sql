-- =====================================================
-- SQL LEARNING JOURNEY
-- Level 05 : CASE Function
-- Database : MySQL
-- Author   : Lavanya Bekkam
-- =====================================================

/*
=========================================================
TOPIC : CASE Statement
=========================================================

Definition:
The CASE statement is used to apply conditional logic in
SQL. It works like an IF-ELSE statement in programming
languages by checking conditions and returning a value.

Syntax:

SELECT column_name,
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE result
END AS alias_name
FROM table_name;

Note:
• CASE checks conditions from top to bottom.
• The first matching condition is returned.
• If no condition matches, the ELSE value is returned.
• CASE can be used in SELECT, ORDER BY, GROUP BY, and UPDATE.
*/


-- =====================================================
-- BASIC LEVEL
-- =====================================================

-- Question 1:
-- Categorize employees based on salary.

SELECT name,
       salary,
CASE
    WHEN salary >= 80000 THEN 'High'
    WHEN salary >= 60000 THEN 'Medium'
    ELSE 'Low'
END AS salary_category
FROM employees;

---------------------------------------------------------

-- Question 2:
-- Display whether the employee's phone number is available.

SELECT name,
       phone,
CASE
    WHEN phone IS NULL THEN 'Missing'
    ELSE 'Available'
END AS phone_status
FROM employees;

---------------------------------------------------------

-- Question 3:
-- Display whether a manager is assigned.

SELECT name,
       manager_id,
CASE
    WHEN manager_id IS NOT NULL THEN 'Manager Assigned'
    ELSE 'No Manager'
END AS manager_status
FROM employees;

---------------------------------------------------------

-- Question 4:
-- Categorize employees based on age.

SELECT name,
       age,
CASE
    WHEN age >= 30 THEN 'Senior'
    ELSE 'Junior'
END AS employee_level
FROM employees;

---------------------------------------------------------

-- Question 5:
-- Display email availability.

SELECT name,
       email,
CASE
    WHEN email IS NOT NULL THEN 'Available'
    ELSE 'Missing'
END AS email_status
FROM employees;



-- =====================================================
-- INTERMEDIATE LEVEL
-- =====================================================

-- Question 6:
-- Classify departments into categories.

SELECT name,
       department,
CASE
    WHEN department = 'IT' THEN 'Technical'
    WHEN department = 'HR' THEN 'Human Resources'
    WHEN department = 'Finance' THEN 'Accounts'
    WHEN department = 'Marketing' THEN 'Business'
    ELSE 'Others'
END AS department_category
FROM employees;

---------------------------------------------------------

-- Question 7:
-- Display bonus eligibility.

SELECT name,
       salary,
CASE
    WHEN salary > 70000 THEN 'Bonus Eligible'
    ELSE 'No Bonus'
END AS bonus_status
FROM employees;

---------------------------------------------------------

-- Question 8:
-- Create a performance band.

SELECT name,
       department,
       salary,
CASE
    WHEN department='IT' AND salary>80000 THEN 'Excellent'
    WHEN department='HR' AND salary>60000 THEN 'Good'
    ELSE 'Average'
END AS performance_band
FROM employees;

---------------------------------------------------------

-- Question 9:
-- Categorize employees based on experience using joining year.

SELECT name,
       join_date,
CASE
    WHEN YEAR(join_date) <= 2021 THEN 'Experienced'
    WHEN YEAR(join_date) <= 2023 THEN 'Intermediate'
    ELSE 'New Employee'
END AS experience_level
FROM employees;

---------------------------------------------------------

-- Question 10:
-- Categorize salary into four levels.

SELECT name,
       salary,
CASE
    WHEN salary >= 90000 THEN 'Excellent'
    WHEN salary >= 75000 THEN 'Very Good'
    WHEN salary >= 60000 THEN 'Good'
    ELSE 'Needs Improvement'
END AS salary_grade
FROM employees;



-- =====================================================
-- ADVANCED LEVEL
-- =====================================================

-- Question 11:
-- Display employee priority.

SELECT name,
       department,
       salary,
CASE
    WHEN department='IT' AND salary>=85000 THEN 'Priority'
    WHEN department='Finance' AND salary>=70000 THEN 'Priority'
    ELSE 'Normal'
END AS priority_status
FROM employees;

---------------------------------------------------------

-- Question 12:
-- Classify cities into regions.

SELECT name,
       city,
CASE
    WHEN city IN ('Hyderabad','Bangalore','Chennai') THEN 'South India'
    WHEN city IN ('Mumbai','Pune') THEN 'West India'
    WHEN city='Delhi' THEN 'North India'
    ELSE 'Other Region'
END AS region
FROM employees;

---------------------------------------------------------

-- Question 13:
-- Display employee profile completeness.

SELECT name,
CASE
    WHEN phone IS NOT NULL
         AND email IS NOT NULL
         AND manager_id IS NOT NULL
    THEN 'Complete'

    WHEN phone IS NULL
         OR email IS NULL
    THEN 'Incomplete'

    ELSE 'Partially Complete'
END AS profile_status
FROM employees;

---------------------------------------------------------

-- Question 14:
-- Display promotion eligibility.

SELECT name,
       salary,
       join_date,
CASE
    WHEN salary >= 80000
         AND YEAR(join_date) <= 2022
    THEN 'Eligible'

    ELSE 'Not Eligible'
END AS promotion_status
FROM employees;

---------------------------------------------------------

-- Question 15:
-- Assign employee ratings.

SELECT name,
       salary,
CASE
    WHEN salary >= 90000 THEN '★★★★★'
    WHEN salary >= 80000 THEN '★★★★'
    WHEN salary >= 70000 THEN '★★★'
    WHEN salary >= 60000 THEN '★★'
    ELSE '★'
END AS employee_rating
FROM employees;

-- =====================================================
-- End of CASE Function
-- =====================================================
