USE AdventureWorks2022;

-- Creación de la tabla Dim_Platform
CREATE TABLE Dim_Platform (
  PlatformKey varchar(50) PRIMARY KEY,
  Platform nvarchar(300)
);

-- Creación de la tabla Dim_Genre
CREATE TABLE Dim_Genre (
  GenreKey varchar(50) PRIMARY KEY,
  Genre nvarchar(100)
);

-- Creación de la tabla Dim_Region
CREATE TABLE Dim_Region (
  RegionKey varchar(50) PRIMARY KEY,
  RegionName nvarchar(100)
);
