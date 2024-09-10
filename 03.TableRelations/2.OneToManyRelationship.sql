CREATE TABLE Manufacturers (
    ManufacturerID INT IDENTITY NOT NULL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    EstablishedOn DATETIME NOT NULL
)

CREATE TABLE Models (
    ModelID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(255) NOT NULL,
    ManufacturerID INT NOT NULL FOREIGN KEY REFERENCES Manufacturers(ManufacturerID)
)

INSERT INTO Manufacturers (Name, EstablishedOn)
    VALUES ('BMW', '07/03/1916'),
           ('Tesla', '01/01/2003'),
           ('Lada', '01/05/1966')

INSERT INTO Models (ModelID, Name, ManufacturerID)
    VALUES (101, 'X1', 1),
           (102, 'i6', 1),
           (103, 'Model S', 2),
           (104, 'Model X', 2),
           (105, 'Model 3', 2),
           (106, 'Nova', 3)
           
--SELECT Manufacturers.Name, Models.Name, Manufacturers.EstablishedOn FROM Manufacturers JOIN Models ON Manufacturers.ManufacturerID = Models.ManufacturerID;