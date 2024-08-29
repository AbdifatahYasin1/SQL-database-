-- This query retrieves user information along with their password hashes
-- It combines data from the UserlIST and Password tables

-- Select specific columns from both tables
SELECT 
    UserlIST.Username,   -- User's username
    UserlIST.FirstName,  -- User's first name
    UserlIST.LastName,   -- User's last name
    UserlIST.Email,      -- User's email address
    Password.PasswordHash -- User's hashed password

-- Start with the UserlIST table
FROM UserlIST

-- Join the Password table with UserlIST
-- This ensures we only get password information for existing users
INNER JOIN Password ON UserlIST.UserId = Password.UserId;

-- Note: This query assumes a one-to-one relationship between UserlIST and Password tables
-- Each user in UserlIST should have exactly one corresponding entry in the Password table



SELECT  UserlIST.Username,   -- User's username
Password.PasswordHash -- User's hashed password
FROM UserlIST
INNER JOIN Password ON UserlIST.UserId = Password.UserId;




CREATE TABLE classes (
  id INT  PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT
);

CREATE TABLE students (
  id INT IDENTITY(1,1) PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  class_id INT NOT NULL,
  FOREIGN KEY (class_id) REFERENCES classes(id)
);

-- This query selects all columns from both the classes and students tables
-- It uses a RIGHT JOIN, which means all rows from the students table will be included
-- even if there is no matching class_id in the classes table
-- The ON clause specifies the join condition: classes.id = students.class_id
-- This means we're matching students to their respective classes based on the class_id
-- If a student has no assigned class (null class_id), they will still appear in the result
-- with null values for the classes table columns


-- In the RIGHT JOIN query:
-- 'classes' is the left table
-- 'students' is the right table
SELECT 
    classes.id AS class_id,
    classes.name AS class_name,
    classes.description AS class_description,
    students.id AS student_id, 
    students.first_name AS student_first_name,
    students.last_name AS student_last_name
FROM
    students
RIGHT JOIN
    classes
ON
    classes.id = students.class_id

-- In the LEFT JOIN query:
-- 'classes' is the left table
-- 'students' is the right table
SELECT *
FROM classes
LEFT JOIN students ON classes.id = students.class_id;

-- In the FULL JOIN query:
-- 'classes' is the left table
-- 'students' is the right table
SELECT *
FROM classes
FULL JOIN students ON classes.id = students.class_id;
