CREATE TABLE Students (
    StudentID INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(255) NOT NULL
)

CREATE TABLE Exams (
    ExamID INT PRIMARY KEY IDENTITY (101, 1),
    [Name] VARCHAR(255) NOT NULL
)

CREATE TABLE StudentsExams (
    StudentID INT,
    ExamID INT,
    PRIMARY KEY (StudentID, ExamID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ExamID) REFERENCES Exams(ExamID)
)

INSERT INTO Students ([Name])
    VALUES ('Mila'),
           ('Toni'),
           ('Ron')

INSERT INTO Exams ([Name])
    VALUES ('SpringMVC'),
           ('Neo4j'),
           ('Oracle 11g')

INSERT INTO StudentsExams (StudentID, ExamID)
    VALUES (1, 101),
           (1, 102),
           (2, 101),
           (3, 103),
           (2, 102),
           (2, 103)

SELECT 
    s.Name
    ,e.Name
FROM 
    StudentsExams as se
JOIN 
    Students AS s ON se.StudentID = s.StudentID
JOIN 
    Exams AS e ON se.ExamID = e.ExamID