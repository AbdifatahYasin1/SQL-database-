-- Example 1: Simple View with UPDATE
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO employees (employee_id, first_name, last_name, department) VALUES
(1, 'John', 'Doe', 'Sales'),
(2, 'Jane', 'Smith', 'Marketing'),
(3, 'Michael', 'Johnson', 'IT'),
(4, 'Emily', 'Brown', 'HR'),
(5, 'David', 'Wilson', 'Finance'),
(6, 'Sarah', 'Taylor', 'Operations'),
(7, 'Robert', 'Anderson', 'Sales'),
(8, 'Jennifer', 'Martinez', 'Marketing'),
(9, 'William', 'Thompson', 'IT'),
(10, 'Lisa', 'Garcia', 'HR');


CREATE VIEW employee_details AS
SELECT employee_id, first_name, last_name, department
FROM employees;

-- Example of updating through the view
UPDATE employee_details
SET department = 'IT'
WHERE employee_id = 9;

-- delete throught the view

delete employee_details where employee_id = 8;



