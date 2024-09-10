
CREATE TABLE Passports(
    PassportID INT PRIMARY KEY NOT NULL,
    PassportNumber VARCHAR(255) NOT NULL
)

CREATE TABLE Persons (
    PersonID INT IDENTITY PRIMARY KEY NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    Salary FLOAT NOT NULL,
    PassportID INT NOT NULL UNIQUE FOREIGN KEY REFERENCES Passports(PassportID)
)

INSERT INTO Passports (PassportID, PassportNumber)
    VALUES (101, 'N34FG21B'),
           (102, 'K65LO4R7'),
           (103, 'ZE657QP2')

INSERT INTO Persons (FirstName, Salary, PassportID)
    VALUES ('Roberto', 43300.00, 102),
           ('Tom', 56100.00, 103),
           ('Yana', 60200.00, 101)

