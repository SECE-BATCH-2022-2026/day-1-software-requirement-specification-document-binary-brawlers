create database studentmanagementsystem;
use studentmanagementsystem;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    ContactInfo VARCHAR(100)
);
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100),
    CourseCode VARCHAR(20),
    Instructor VARCHAR(100),
    Schedule VARCHAR(100)
);
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Department VARCHAR(100),
    ContactInfo VARCHAR(100)
);
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    Date DATE,
    AttendanceStatus VARCHAR(10),
    FacultyID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);
