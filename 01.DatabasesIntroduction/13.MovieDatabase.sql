CREATE DATABASE Movies;

CREATE TABLE Directors(
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    DirectorName VARCHAR(255) NOT NULL,
    Notes VARCHAR(MAX)
)

CREATE TABLE Genres(
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    GenreName VARCHAR(255) NOT NULL,
    Notes VARCHAR(MAX)
)

CREATE TABLE Categories(
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL,
    Notes VARCHAR(MAX)
)

CREATE TABLE Movies(
    Id INT IDENTITY NOT NULL,
    Title VARCHAR(255),
    DirectorId INT FOREIGN KEY REFERENCES Directors(Id),
    CopyrightYear SMALLINT,
    Length FLOAT,
    GenreId INT FOREIGN KEY REFERENCES Genres(Id),
    CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
    Rating DECIMAL(3,1),
    Notes VARCHAR(MAX)
)

INSERT INTO Directors(DirectorName)
    VALUES ('Quentin Tarantino'),
           ('Christopher Nolan'),
           ('Martin Scorsese'),
           ('Stanley Kubrick'),
           ('Francis Ford Coppola');

INSERT INTO Genres (GenreName)
    VALUES ('Action'),
           ('Drama'),
           ('Gangster Film'),
           ('Sci-Fi'),
           ('Crime Drama');

INSERT INTO Categories(CategoryName)
    VALUES('Award-Winning'),
          ('Intense'),
          ('Dramatic'),
          ('Insightful'),
          ('Scary');

INSERT INTO Movies(Title, DirectorId, CopyrightYear, GenreId, CategoryId, Rating)
    VALUES ('Pulp Fiction', 1, 1994, 3, 2, 45),
           ('Interstellar', 2, 2014, 4, 3, 4.6),
           ('Goodfellas', 3, 1990, 3, 3, 4.8),
           ('2001 Space Oddyssey', 4, 1968, 4, 4, 4.6),
           ('The Godfather', 5, 1972, 5, 1, 4.5)