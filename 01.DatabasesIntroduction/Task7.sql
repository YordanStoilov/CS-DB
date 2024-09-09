CREATE TABLE People (
    Id INT PRIMARY KEY IDENTITY (1, 1),
    Name NVARCHAR(200) NOT NULL,
    Picture VARBINARY(MAX),
    CHECK (DATALENGTH(Picture) <= 2000000),
    Height DECIMAL(4, 2),
    Weight DECIMAL(5, 2),
    Gender CHAR(1) NOT NULL,
    CHECK(Gender = 'f' OR Gender = 'm'),
    Birthdate DATE NOT NULL,
    Biography NVARCHAR(MAX)
)

INSERT INTO People(Name, Height, Weight, Gender, Birthdate, Biography)
    VALUES ('Yordan', 1.87, 80.80, 'm', '1995-11-08', 'Programming Student'),
           ('Hristina', 1.68, 54.20, 'f', '1993-01-25', 'Pharmacy Manager'),
           ('Nikola', 1.72, 78.90, 'm', '1997-07-20', 'Sushi Chef'),
           ('Donika', 1.72, 53.20, 'f', '2005-07-17', 'Art Student'),
           ('Momchil', 1.75, 85.00, 'm', '1995-09-03', 'Fitness Instructor');
