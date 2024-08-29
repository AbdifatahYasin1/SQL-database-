-- INNER JOIN
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName, Departments.Location
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;


-- LEFT JOIN
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName, Departments.Location
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;










-- RIGHT JOIN
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName, Departments.Location
FROM Employees
RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
















-- FULL OUTER JOIN
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName, Departments.Location
FROM Employees
FULL OUTER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;



-- The right and left join
The two queries are equivalent and return the same data:
The difference is the direction of the join, but since the tables have matching rows for each `DepartmentID`, the final result set is the same.
 

