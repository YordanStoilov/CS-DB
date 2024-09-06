CREATE TABLE Employees(
    Id INT IDENTITY PRIMARY KEY NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Title VARCHAR(255) NOT NULL,
    Notes VARCHAR(255)    
)

CREATE TABLE Customers(
    AccountNumber INT IDENTITY PRIMARY KEY NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(50) NOT NULL,
    EmergencyName VARCHAR(255) NOT NULL,
    EmergencyNumber VARCHAR(50) NOT NULL,
    Notes VARCHAR(255)
)

CREATE TABLE RoomStatus(
    RoomStatus VARCHAR(50) PRIMARY KEY NOT NULL,
    Notes VARCHAR(255)
)

CREATE TABLE RoomTypes(
    RoomType VARCHAR(255) PRIMARY KEY NOT NULL,
    Notes VARCHAR(255)
)

CREATE TABLE BedTypes(
    BedType VARCHAR(255) PRIMARY KEY NOT NULL, 
    Notes VARCHAR(255)
)

CREATE TABLE Rooms (
    RoomNumber INT IDENTITY PRIMARY KEY NOT NULL,
    RoomType VARCHAR(255) FOREIGN KEY REFERENCES RoomTypes(RoomType) NOT NULL,
    BedType VARCHAR(255) FOREIGN KEY REFERENCES BedTypes(BedType) NOT NULL,
    Rate FLOAT NOT NULL,
    RoomStatus VARCHAR(50) FOREIGN KEY REFERENCES RoomStatus(RoomStatus) NOT NULL,
    Notes VARCHAR(255)
)

CREATE TABLE Payments(
    Id INT IDENTITY PRIMARY KEY NOT NULL,
    EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
    PaymentDate DATETIME DEFAULT GETDATE() NOT NULL,
    AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
    FirstDateOccupied DATETIME NOT NULL,
    LastDateOccupied DATETIME NOT NULL,
    TotalDays INT NOT NULL,
    AmountCharged FLOAT NOT NULL,
    TaxRate FLOAT NOT NULL,
    TaxAmount FLOAT NOT NULL,
    PaymentTotal FLOAT NOT NULL,
    Notes VARCHAR(255)
)

CREATE TABLE Occupancies (
    Id INT IDENTITY PRIMARY KEY NOT NULL, 
    EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
    DateOccupied DATETIME NOT NULL,
    AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
    RoomNumber INT FOREIGN KEY REFERENCES Rooms(RoomNumber),
    RateApplied FLOAT NOT NULL,
    PhoneCharge VARCHAR(50),
    Notes VARCHAR(255) 
)

INSERT INTO Employees(FirstName, LastName, Title)
    VALUES ('Hristina', 'Georgieva', 'Manager'),
           ('Yordan', 'Stoilov', 'IT'),
           ('Nikola', 'Georgiev', 'Chef')

INSERT INTO Customers (FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber)
    VALUES ('Georgi', 'Georgiev', '0887795218', 'Ivanka Georgieva', '0887795218'),
           ('Ivanka', 'Georgieva', '0889705077', 'Georgi Georgiev', '0889705077'),
           ('Donika', 'Stoyanova', '0882851341', 'Nikola Georgiev', '0882851341')

INSERT INTO RoomStatus(RoomStatus)
    VALUES ('Taken'),
           ('Free'),
           ('In Maintenance')

INSERT INTO RoomTypes(RoomType)
    VALUES ('Regular'),
           ('Double'),
           ('Presidential')

INSERT INTO BedTypes(BedType)
    VALUES ('Soft'),
           ('Medium'),
           ('Hard')


INSERT INTO Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus)
    VALUES (1, 'Regular', 'Medium', 80.79, 'Free'),
           (2, 'Double', 'Hard', 112.29, 'In Maintenance'),
           (3, 'Presidential', 'Soft', 249.99, 'Free')

INSERT INTO Payments (EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal)
    VALUES (1, '2024-06-12', 1, '2024-06-13', '2024-06-15', 2, 161.58, 20, 32.32, 193.9),
           (1, '2024-06-14', 2, '2024-06-16', '2024-06-20', 4, 999.96, 20, 199.92, 1199.95),
           (1, '2024-06-14', 3, '2024-06-15', '2024-06-20', 5, 561.45, 20, 112.29, 673.74)

INSERT INTO Occupancies (EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied)
    VALUES (1, '2024-06-13', 1, 1, 20),
           (1, '2024-06-14', 2, 2, 20),
           (1, '2024-06-14', 3, 3, 20)
