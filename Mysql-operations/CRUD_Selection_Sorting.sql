-- Show all available databases in the system
SHOW DATABASES;

-- Create a new database named 'university'
CREATE DATABASE university;

-- Use the 'university' database for subsequent operations
USE university;

-- Create a table named 'comps' with columns for ID, name, age, email, and marks
CREATE TABLE comps (
    id INT AUTO_INCREMENT,              -- Auto-incrementing ID field
    PRIMARY KEY(id),                    -- Set 'id' as the primary key
    name CHAR(30),                      -- Name field with a maximum of 30 characters
    age INT,                            -- Age field
    email VARCHAR(40),                  -- Email field with a maximum of 40 characters
    marks INT NOT NULL                  -- Marks field that cannot be NULL
);

-- Insert several rows of data into the 'comps' table
INSERT INTO comps(name, age, email, marks) VALUES 
('Vipul', 18, 'Vipulsolnki83@gmail.com', 100),
('sakshi', 18, 'shindesakshi@gmail.com', 80),
('xyz', 19, 'xyz332@gmail.com', 92),
('sds', 19, 'sdsd@gmail.com', 93),
('aj', 20, 'ajkfjn@gmail.com', 70),
('rta', 18, 'rta@gmail.com', 58),
('hgg', 20, 'hgg@gamail.com', 94);

-- Select all columns from the 'comps' table
SELECT * FROM comps;

-- Select all columns from the 'comps' table, ordered by the 'age' column
SELECT * FROM comps ORDER BY age;

-- Select the minimum marks from the 'comps' table where marks are less than 90
SELECT MIN(marks) FROM comps WHERE marks < 90;

-- Count the number of entries in the 'comps' table where age is greater than 19
SELECT COUNT(marks) FROM comps WHERE age > 19;

-- Calculate the average of all the marks in the 'comps' table
SELECT AVG(marks) FROM comps;

-- Sum the marks of all entries where age is greater than 19
SELECT SUM(marks) FROM comps WHERE age > 19;

-- Select all entries where marks are between 90 and 95
SELECT * FROM comps WHERE marks BETWEEN 90 AND 95;

-- Select all entries where marks are not between 90 and 95
SELECT * FROM comps WHERE marks NOT BETWEEN 90 AND 95;
