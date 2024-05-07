-- Create a new database named "UniversityDB"
CREATE DATABASE UniversityDB;

-- Use the newly created database
USE UniversityDB;
-- Create a table named "Students" with specified attributes
CREATE TABLE Students (
  StudentID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL, -- Enforce not null constraint for first name
  LastName VARCHAR(50) NOT NULL,  -- Enforce not null constraint for last name
  Age INT,
  Major VARCHAR(50)
);


-- Justification:
  * Primary key on StudentID ensures unique identification for each student.
  * VARCHAR data types with appropriate lengths are chosen for names and major.
  * Age is stored as an integer.
  * NOT NULL constraints are added to FirstName and LastName to prevent missing data.


-- Insert at least 5 records into the "Students" table
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major)
VALUES (1001, 'John', 'Doe', 20, 'Computer Science'),
       (1002, 'Jane', 'Smith', 21, 'Mathematics'),
       (1003, 'Alice', 'Williams', 19, 'English'),
       (1004, 'David', 'Miller', 22, 'Biology'),
       (1005, 'Michael', 'Jones', 20, 'History');
       
       -- Alter the "Students" table to add a new column named "GPA"
ALTER TABLE Students
ADD COLUMN GPA DECIMAL(2, 1);  -- Store GPA with two digits total, one decimal place

-- Justification:
  * DECIMAL data type with (2, 1) precision allows storing GPA values with 
    two total digits (one whole number and one decimal place).

-- Update existing records with sample GPA values
UPDATE Students
SET GPA = 3.5
WHERE StudentID = 1001;

UPDATE Students
SET GPA = 3.8
WHERE StudentID = 1002;

UPDATE Students
SET GPA = 3.2
WHERE StudentID = 1003;

UPDATE Students
SET GPA = 3.7
WHERE StudentID = 1004;

UPDATE Students
SET GPA = 3.9
WHERE StudentID = 1005;

-- Rename the table from "Students" to "EnrolledStudents"
RENAME TABLE Students TO EnrolledStudents;

-- Create a new table named "Courses" with specified attributes
CREATE TABLE Courses (
  CourseID INT PRIMARY KEY,
  CourseName VARCHAR(100) NOT NULL,
  Instructor VARCHAR(100) NOT NULL,
  Credits INT
);

-- Justification:
  * Similar justifications as "Students" table for data types and constraints.

-- Insert at least 3 records into the "Courses" table
INSERT INTO Courses (CourseID, CourseName, Instructor, Credits)
VALUES (2001, 'Introduction to Programming', 'Prof. Brown', 3),
       (2002, 'Calculus I', 'Prof. Lee', 4),
       (2003, 'Introduction to Literature', 'Prof. Garcia', 3);

-- Drop the "EnrolledStudents" table from the database
DROP TABLE EnrolledStudents;

-- Warning: This will permanently delete the table and its data.

