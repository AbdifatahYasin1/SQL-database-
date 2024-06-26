CREATE DATABASE Human_Resources;
USE Human_Resources;

CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(255) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    DepartmentID INT,
    JobID INT,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    ManagerID INT,
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME
);





CREATE TABLE Departments (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    DepartmentHead INT,
    DepartmentBudget DECIMAL(10,2) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME
);


CREATE TABLE Jobs (
    JobID INT IDENTITY(1,1) PRIMARY KEY,
    JobTitle VARCHAR(100) NOT NULL,
    JobDescription TEXT NOT NULL,
    RequiredSkills VARCHAR(255),
    RequiredEducation VARCHAR(255),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME
);

CREATE TABLE Attendance (
    AttendanceID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    CheckInTime DATETIME NOT NULL,
    CheckOutTime DATETIME,
    LeaveType VARCHAR(50),
    LeaveBalance DECIMAL(5,2),
    CreatedAt DATETIME DEFAULT GETDATE()
);


CREATE TABLE Payroll (
    PayrollID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    PayPeriod DATE NOT NULL,
    BasicSalary DECIMAL(10,2) NOT NULL,
    Bonuses DECIMAL(10,2),
    Deductions DECIMAL(10,2),
    NetPay DECIMAL(10,2) NOT NULL,
    PaymentDate DATE NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);


CREATE TABLE Training (
    TrainingID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    TrainingName VARCHAR(100) NOT NULL,
    TrainingDescription TEXT NOT NULL,
    TrainerName VARCHAR(100) NOT NULL,
    TrainingDate DATE NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);


CREATE TABLE Performance (
    PerformanceID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    ReviewDate DATE NOT NULL,
    PerformanceRating DECIMAL(3,2) NOT NULL,
    FeedbackNotes TEXT,
    GoalsSetting TEXT,
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME
);




CREATE TABLE Benefits (
    BenefitID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    BenefitType VARCHAR(100) NOT NULL,
    BenefitDescription TEXT NOT NULL,
    BenefitStartDate DATE NOT NULL,
    BenefitEndDate DATE,
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME
);



CREATE TABLE Recruitment (
    RecruitmentID INT IDENTITY(1,1) PRIMARY KEY,
    JobID INT,
    ApplicantName VARCHAR(255) NOT NULL,
    ApplicantEmail VARCHAR(100) UNIQUE NOT NULL,
    ApplicationStatus VARCHAR(50) NOT NULL,
    InterviewDate DATETIME,
    HiringDecision VARCHAR(50),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME
);


CREATE TABLE OrganizationalStructure (
    StructureID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    ManagerID INT,
    ReportingLevel INT NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME
);