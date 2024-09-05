CREATE TABLE Users (
    Id BIGINT PRIMARY KEY IDENTITY,
    Username VARCHAR(30) NOT NULL,
    Password VARCHAR(26) NOT NULL,
    ProfilePicture VARBINARY(MAX),
    CHECK(DATALENGTH(ProfilePicture) <= 900000),
    LastLoginTime DATE NOT NULL,
    IsDeleted VARCHAR(5),
    CHECK(IsDeleted = 'true' OR IsDeleted = 'false')
)

INSERT INTO Users(Username, Password, LastLoginTime, IsDeleted)
    VALUES ('picha123', 'GolemPich1', '2023-12-31', 'false'),
           ('george_95', 'GeorgyBoy123', '2012-02-14', 'true'),
           ('michael_franceze', 'Mafioso0', '2011-04-22', 'true'),
           ('chris_moltisanti', 'Goomar87', '2022-08-14', 'false'),
           ('big_boy_tony', 'Number1!', '1998-09-10', 'true');