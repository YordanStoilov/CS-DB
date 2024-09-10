CREATE TABLE Majors (
    MajorID INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(255) NOT NULL
)

CREATE TABLE Subjects (
    SubjectID INT IDENTITY PRIMARY KEY,
    SubjectName NVARCHAR(255) NOT NULL
)

CREATE TABLE Students (
    StudentID INT IDENTITY PRIMARY KEY,
    StudentNumber INT NOT NULL,
    StudentName NVARCHAR(255) NOT NULL,
    MajorID INT NOT NULL,
    FOREIGN KEY (MajorID) REFERENCES Majors(MajorID)
)

CREATE TABLE Payments (
    PaymentID INT IDENTITY PRIMARY KEY,
    PaymentDate DATETIME NOT NULL,
    PaymentAMount FLOAT NOT NULL,
    StudentID INT NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
)


CREATE TABLE Agenda (
    StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
    SubjectID INT FOREIGN KEY REFERENCES Subjects(SubjectID),
    PRIMARY KEY (StudentID, SubjectID)
)