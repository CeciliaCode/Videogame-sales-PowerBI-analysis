CREATE DATABASE VG_Stage_db;

USE VG_Stage_db;

-- Creaci n de la tabla Dim_Platform
CREATE TABLE Dim_Platform (
  PlatformKey int IDENTITY(1,1) PRIMARY KEY,
  Platform nvarchar(300)
);

-- Creaci n de la tabla Dim_Genre
CREATE TABLE Dim_Genre (
  GenreKey int IDENTITY(1,1) PRIMARY KEY,
  Genre nvarchar(100)
);

-- Creaci n de la tabla Dim_Region
CREATE TABLE Dim_Region (
  RegionKey int IDENTITY(1,1) PRIMARY KEY,
  RegionName nvarchar(100)
);
-- Creaci n de la tabla Fact_VideoGameSales
CREATE TABLE Fact_VideoGameSales (
  SalesID int IDENTITY(1,1) PRIMARY KEY,
  Name nvarchar(500),
  PlatformKey int,
  Year int,
  GenreKey int,
  Sales money,
  RegionKey int,
  FOREIGN KEY (PlatformKey) REFERENCES Dim_Platform(PlatformKey),
  FOREIGN KEY (GenreKey) REFERENCES Dim_Genre(GenreKey),
  FOREIGN KEY (RegionKey) REFERENCES Dim_Region(RegionKey)
);

-- Consultas
SELECT * FROM Dim_Platform;
SELECT * FROM Dim_Genre;
SELECT * FROM Dim_Region;
SELECT * FROM Fact_VideoGameSales;
SELECT f.*, p.Platform, g.Genre, r.RegionName FROM Fact_VideoGameSales f INNER JOIN Dim_Platform p ON f.PlatformKey = p.PlatformKey INNER JOIN Dim_Genre g 
ON f.GenreKey = g.GenreKey INNER JOIN Dim_Region r ON f.RegionKey = r.RegionKey;
