-- Create a new database named 'company'
CREATE DATABASE company;

-- Switch to the 'company' database
USE company;

-- Create a table named 'employee' with columns for employee ID, name, and city
CREATE TABLE employee(
    eid INT AUTO_INCREMENT,             -- Auto-incrementing employee ID (Primary Key)
    PRIMARY KEY(eid),                   -- Set 'eid' as the primary key
    ename CHAR(30) NOT NULL,            -- Employee name, cannot be null
    city CHAR(20) NOT NULL              -- City where the employee resides, cannot be null
);

-- Create a table named 'department' with columns for department ID, name, and employee ID
CREATE TABLE department(
    Did INT AUTO_INCREMENT,             -- Auto-incrementing department ID (Primary Key)
    PRIMARY KEY(Did),                   -- Set 'Did' as the primary key
    dname CHAR(30) NOT NULL,            -- Department name, cannot be null
    eid INT                             -- Employee ID, linking to 'employee' table (Foreign Key)
);

-- Select all records from the 'employee' table
SELECT * FROM employee;

-- Select all records from the 'department' table
SELECT * FROM department;

-- Insert records into the 'employee' table with employee name and city
INSERT INTO employee(ename, city) VALUES
('Vipul', 'Nagpur'),
('Yash', 'Jalgaon'),
('Sid', 'Mumbai'),
('Harshal', 'Butibori'),
('Sahil', 'Hyderabad'),
('Golu', 'Goa'),
('Harsh', 'Delhi');

-- Insert additional records into the 'employee' table
INSERT INTO employee(ename, city) VALUES
('Tannu', 'Nagpur'),
('Bhumi', 'Pune'),
('Nazuko', 'Japan');

-- Insert records into the 'department' table with department name and associated employee ID
INSERT INTO department(dname, eid) VALUES
('HR', 5),
('R&D', 7),
('ACCOUNTS', 3),
('IT', 9),
('SALES', 6),
('PRODUCTION', 8),
('PUBLIC RELATION', 3),
('HR', 2),
('MARKETING', 1),
('Q&A', 4);

-- Select all records from the 'department' table
SELECT * FROM department;

-- INNER JOIN: Select records from 'employee' and 'department' where the employee ID matches the department ID
SELECT * FROM employee 
INNER JOIN department
ON employee.eid = department.Did;

-- LEFT OUTER JOIN: Select all records from 'employee' and matching records from 'department'
SELECT * FROM employee 
LEFT JOIN department
ON employee.eid = department.Did;

-- RIGHT OUTER JOIN: Select all records from 'department' and matching records from 'employee'
SELECT * FROM employee 
RIGHT JOIN department
ON employee.eid = department.Did;

-- FULL OUTER JOIN: Combine results of left and right outer joins to select all matching and non-matching records
SELECT * FROM employee 
LEFT JOIN department
ON employee.eid = department.Did
UNION
SELECT * FROM employee 
RIGHT JOIN department
ON employee.eid = department.Did;

-- UNION: Combine and select employee IDs and names from 'employee' with department IDs and names from 'department'
SELECT eid, ename FROM employee 
UNION
SELECT Did, dname FROM department;
