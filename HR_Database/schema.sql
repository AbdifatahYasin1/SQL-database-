create database Human_Resources;

use Human_Resources;


-- use always sql server syntax


CREATE TABLE Employees (
    id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    location_id INT,
    address VARCHAR(30),
    phone_number VARCHAR(30)
);


-- identity is a keyword that is used to create a unique number for each row in a table
-- it like auto increment in mysql


 t