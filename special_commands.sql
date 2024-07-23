DROP DATABASE IF EXISTS Human_Resources
SELECT * FROM INFORMATION_SCHEMA.TABLES; 
SELECT name FROM sys.databases;
-- removing foreign key
ALTER TABLE Passwords
DROP CONSTRAINT [FK_Passwords_Users];

-- selecting the duplicate data
SELECT Username, COUNT(*) AS DuplicateCount
FROM UserlIST
GROUP BY Username
HAVING COUNT(*) > 1;

-- beging transaction
BEGIN TRANSACTION;
--undo the transaction
ROLLBACK;