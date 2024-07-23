INSERT INTO UserlIST (Username, FirstName, LastName, Email)
VALUES 
('johndoe', 'John', 'Doe', 'john.doe@email.com'),
('janesmit', 'Jane', 'Smith', 'jane.smith@email.com'),
('bobwilson', 'Bob', 'Wilson', 'bob.wilson@email.com'),
('alicejones', 'Alice', 'Jones', 'alice.jones@email.com'),
('mikebrown', 'Mike', 'Brown', 'mike.brown@email.com'),
('sarahlee', 'Sarah', 'Lee', 'sarah.lee@email.com'),
('tomclark', 'Tom', 'Clark', 'tom.clark@email.com'),
('emmawhite', 'Emma', 'White', 'emma.white@email.com'),
('davidgreen', 'David', 'Green', 'david.green@email.com'),
('lisablack', 'Lisa', 'Black', 'lisa.black@email.com');

INSERT INTO Password (UserId, PasswordHash)
VALUES 
(1, 'hashed_password_1'),
(2, 'hashed_password_2'),
(3, 'hashed_password_3'),
(4, 'hashed_password_4'),
(5, 'hashed_password_5'),
(6, 'hashed_password_6'),
(7, 'hashed_password_7'),
(8, 'hashed_password_8'),
(9, 'hashed_password_9'),
(10, 'hashed_password_10');



-- classes and students data

INSERT INTO classes (name, description) VALUES
('Mathematics', 'Advanced calculus and algebra'),
('Physics', 'Classical mechanics and thermodynamics'),
('Chemistry', 'Organic and inorganic chemistry'),
('Biology', 'Cell biology and genetics'),
('Computer Science', 'Programming and algorithms'),
('Literature', 'World literature and poetry'),
('History', 'Ancient civilizations and modern history'),
('Art', 'Drawing and painting techniques'),
('Music', 'Music theory and composition'),
('Physical Education', 'Sports and fitness');

INSERT INTO students (first_name, last_name, class_id) VALUES
('John', 'Doe', 1),
('Jane', 'Smith', 2),
('Michael', 'Johnson', 3),
('Emily', 'Brown', 4),
('David', 'Wilson', 5),
('Sarah', 'Taylor', 6),
('Christopher', 'Anderson', 7),
('Jessica', 'Thomas', 8),
('Matthew', 'Jackson', 9),
('Olivia', 'White', 10);







