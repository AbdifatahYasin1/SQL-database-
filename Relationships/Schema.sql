-- one to one relationship is when one table has a foreign key that 
-- references a primary key in another table.

--Example: user and password

CREATE TABLE UserlIST(
  UserId INT PRIMARY KEY IDENTITY,
  Username VARCHAR(50) UNIQUE,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Email VARCHAR(100)
);

CREATE TABLE Password (
  PasswordId INT PRIMARY KEY IDENTITY,
  UserId INT FOREIGN KEY REFERENCES UserlIST(UserId) UNIQUE, 
  PasswordHash NVARCHAR(MAX) 
);

-- one to many relationships is when the table has a foreign key that references a primary key in another table.

-- Example: class and students

CREATE TABLE classes (
  id INT IDENTITY(1,1) PRIMARY KEY,
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

--In many to many relationships, there is no fixed limit on the number of relationships between entities in both directions. This type of relationship is often represented by an associative table, also known as a join table or junction table, which contains foreign keys referencing the primary keys of both entities.

-- Create the books table
CREATE TABLE books (
  id INT IDENTITY(1,1) PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  author VARCHAR(100) NOT NULL
);

-- Create the authors table
CREATE TABLE authors (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

-- Create the author_books junction table
CREATE TABLE author_books (
  author_id INT NOT NULL,
  book_id INT NOT NULL,
  PRIMARY KEY (author_id, book_id),
  FOREIGN KEY (author_id) REFERENCES authors(id),
  FOREIGN KEY (book_id) REFERENCES books(id)
);