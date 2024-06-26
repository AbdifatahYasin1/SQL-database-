-- Delete a specific employee
DELETE FROM Employees
WHERE EmployeeID = 1;


-- Update an employee's information
UPDATE Employees
SET FullName = 'Jaamac Aadan', Phone = '06371818191'
WHERE EmployeeID = 1;

-- Drop the entire Employees table
DROP TABLE Employees;

-- Drop a column from the Jobs table
ALTER TABLE Employees
DROP COLUMN HireDate;


--alter table to add new column

ALTER TABLE Employees
ADD EmployeeStatus VARCHAR(20) NULL;


-- alter to modify existing column
ALTER TABLE Employees
ALTER COLUMN Phone VARCHAR(15) NOT NULL; 

-- here we are make to change the datatype of phone to varchar(15)

ALTER TABLE Employees
ADD CONSTRAINT Salary CHECK (Salary > 0);

-- truncate 

TRUNCATE TABLE Employees;


//remane the table
EXEC sp_rename 'Employees', 'EmployeeRecords';


//rename database name
ALTER DATABASE Human_Resources
MODIFY NAME = Human_Resources1

SELECT name FROM sys.databases;