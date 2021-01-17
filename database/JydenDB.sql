-- Create a new database called 'JydenDB'
-- Connect to the 'master' database to run this snippet
USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'JydenDB'
)
CREATE DATABASE [JydenDB]
GO

-- Create a new table called 'Members' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Members', 'U') IS NULL
BEGIN
   -- Create the table in the specified schema
   CREATE TABLE dbo.Members
   (
      MembersId INT NOT NULL PRIMARY KEY,
      FirstName [NVARCHAR](50) NOT NULL,
      LastName [NVARCHAR](50) NOT NULL,
      DateOfBirth DATE NOT NULL,

      -- specify more columns here
   );

   -- Insert rows into table 'Members'
   INSERT INTO Members
      ([MembersId],[FirstName],[LastName],[DateOfBirth])
   VALUES
      ( 1, N'Jørgen', N'Nielsen',N'2000-01-01'),
      ( 2, N'Nikita', N'Hansen',N'1990-12-31'),
      ( 3, N'Tom', N'Andersen',N'1980-12-31'),
      ( 4, N'Jan', N'Jensen',N'1970-12-31')
END
GO

-- Query all employee information
SELECT m.MembersId, m.FirstName, m.LastName, m.DateOfBirth
FROM dbo.Members as m
GO


IF OBJECT_ID('dbo.Attendances', 'U') IS NULL
BEGIN
   -- Create the table in the specified schema
   CREATE TABLE dbo.Attendances
   (
      MembersId INT NOT NULL FOREIGN KEY REFERENCES Members(MembersID),
      AttendanceDate DATE NOT NULL,
      -- specify more columns here
   );

   -- Insert rows into table 'Members'
   INSERT INTO Attendances
      ([MembersId],[AttendanceDate])
   VALUES
      ( 1, N'2020-01-15'),
      ( 4, N'2020-01-15')
END
GO

-- Query all employee information
SELECT a.MembersId, a.AttendanceDate
FROM dbo.Attendances as a
GO