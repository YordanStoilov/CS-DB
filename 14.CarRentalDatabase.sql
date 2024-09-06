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

-- CREATE TABLE Payments(
--     Id INT IDENTITY PRIMARY KEY NOT NULL,
--     EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
--     PaymentDate DATETIME DEFAULT GETDATE() NOT NULL,
--     AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,

-- ) 

-- CREATE TABLE Occupancies (
--     Id INT IDENTITY PRIMARY KEY, EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes
-- )