-- =====================================================
-- SQL LEARNING JOURNEY
-- File       : Database_Setup.sql
-- Database   : MySQL
-- Author     : Lavanya Bekkam
-- Description: Creates and prepares the Employee database
-- =====================================================



/*
=========================================================
STEP 1 : CREATE DATABASE
=========================================================

Definition:
A database is a collection of related tables used to
store and manage data.

Syntax:
CREATE DATABASE database_name;
*/

CREATE DATABASE employee_db;

USE employee_db;



/*
=========================================================
STEP 2 : CREATE TABLE
=========================================================

Definition:
CREATE TABLE is used to create a new table by defining
column names and their respective data types.
*/

CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);



/*
=========================================================
STEP 3 : INSERT SAMPLE DATA
=========================================================

Definition:
INSERT INTO is used to insert one or more records into
a table.
*/

INSERT INTO employees (emp_id, name, age, department, salary, city)
VALUES
(1, 'Lavanya', 23, 'HR', 50000, 'Hyderabad'),
(2, 'Rahul', 25, 'IT', 70000, 'Bangalore'),
(3, 'Sneha', 24, 'Sales', 45000, 'Hyderabad'),
(4, 'Ajay', 30, 'IT', 80000, 'Chennai'),
(5, 'Priya', 27, 'HR', 60000, 'Mumbai'),
(6, 'Ravi', 29, 'Sales', 55000, 'Delhi'),
(7, 'Anjali', 28, 'IT', 90000, 'Hyderabad'),
(8, 'Kiran', 26, 'Marketing', 65000, 'Mumbai'),
(9, 'Arjun', 31, 'Finance', 75000, 'Pune'),
(10, 'Neha', 22, 'Marketing', 48000, 'Bangalore'),
(11, 'Vikram', 35, 'Finance', 95000, 'Chennai'),
(12, 'Meena', 29, 'HR', 58000, 'Delhi'),
(13, 'Suresh', 33, 'IT', 88000, 'Mumbai'),
(14, 'Pooja', 24, 'Sales', 52000, 'Pune'),
(15, 'Karthik', 27, 'IT', 72000, 'Hyderabad');



/*
=========================================================
STEP 4 : ALTER TABLE
=========================================================

Definition:
ALTER TABLE is used to modify the structure of an
existing table by adding new columns.
*/

ALTER TABLE employees
ADD phone VARCHAR(15);

ALTER TABLE employees
ADD email VARCHAR(100);

ALTER TABLE employees
ADD manager_id INT;

ALTER TABLE employees
ADD join_date DATE;



/*
=========================================================
STEP 5 : UPDATE EMPLOYEE DETAILS
=========================================================

Definition:
UPDATE is used to modify existing records in a table.
*/

UPDATE employees
SET phone='9876543210',
    email='lavanya@gmail.com',
    manager_id=101
WHERE emp_id=1;

UPDATE employees
SET phone=NULL,
    email='rahul@gmail.com',
    manager_id=102
WHERE emp_id=2;

UPDATE employees
SET phone='9123456789',
    email=NULL,
    manager_id=101
WHERE emp_id=3;

UPDATE employees
SET phone=NULL,
    email=NULL,
    manager_id=NULL
WHERE emp_id=4;

UPDATE employees
SET phone='9988776655',
    email='priya@gmail.com',
    manager_id=103
WHERE emp_id=5;

UPDATE employees
SET phone='9012345678',
    email='ravi@gmail.com',
    manager_id=101
WHERE emp_id=6;

UPDATE employees
SET phone=NULL,
    email='anjali@gmail.com',
    manager_id=102
WHERE emp_id=7;

UPDATE employees
SET phone='9345678901',
    email=NULL,
    manager_id=104
WHERE emp_id=8;

UPDATE employees
SET phone='9456789012',
    email='arjun@gmail.com',
    manager_id=NULL
WHERE emp_id=9;

UPDATE employees
SET phone=NULL,
    email='neha@gmail.com',
    manager_id=103
WHERE emp_id=10;

UPDATE employees
SET phone='9567890123',
    email='vikram@gmail.com',
    manager_id=104
WHERE emp_id=11;

UPDATE employees
SET phone='9678901234',
    email=NULL,
    manager_id=105
WHERE emp_id=12;

UPDATE employees
SET phone=NULL,
    email='suresh@gmail.com',
    manager_id=NULL
WHERE emp_id=13;

UPDATE employees
SET phone='9789012345',
    email='pooja@gmail.com',
    manager_id=102
WHERE emp_id=14;

UPDATE employees
SET phone='9890123456',
    email=NULL,
    manager_id=105
WHERE emp_id=15;



/*
=========================================================
STEP 6 : UPDATE JOINING DATES
=========================================================

Definition:
Assign joining dates to each employee for practicing
Date Functions in SQL.
*/

UPDATE employees SET join_date='2020-01-15' WHERE emp_id=1;
UPDATE employees SET join_date='2021-03-10' WHERE emp_id=2;
UPDATE employees SET join_date='2022-07-21' WHERE emp_id=3;
UPDATE employees SET join_date='2019-11-05' WHERE emp_id=4;
UPDATE employees SET join_date='2023-02-18' WHERE emp_id=5;
UPDATE employees SET join_date='2020-08-12' WHERE emp_id=6;
UPDATE employees SET join_date='2021-12-25' WHERE emp_id=7;
UPDATE employees SET join_date='2022-04-30' WHERE emp_id=8;
UPDATE employees SET join_date='2023-06-14' WHERE emp_id=9;
UPDATE employees SET join_date='2024-01-09' WHERE emp_id=10;
UPDATE employees SET join_date='2024-05-17' WHERE emp_id=11;
UPDATE employees SET join_date='2025-02-28' WHERE emp_id=12;
UPDATE employees SET join_date='2025-07-11' WHERE emp_id=13;
UPDATE employees SET join_date='2026-01-20' WHERE emp_id=14;
UPDATE employees SET join_date='2026-06-01' WHERE emp_id=15;



/*
=========================================================
STEP 7 : VERIFY DATABASE
=========================================================

Definition:
Retrieve all records to verify that the database has
been created and updated successfully.
*/

SELECT *
FROM employees;



-- =====================================================
-- DATABASE SETUP COMPLETED SUCCESSFULLY
-- =====================================================
