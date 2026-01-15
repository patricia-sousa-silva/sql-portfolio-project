/*
Project: Clinic Appointments DB (SQL server)
Author: Patrícia Silva
Notes: Schema creation (tables, PKs, FKs, constraints)
*/

--Tip: Run on SSMS. You can create a database if you want:
--CREATE DATABASE clinic_appointments;
--GO
--USE clinic_appointments;
--GO

CREATE TABLE dbo.specialties(
  speciality_id INT IDENTITY (1,1) PRIMARY KEY,
  speciality_name NVARCHAR(80) NOT NULL
  default_duration INT
  base_price DECIMAL (10,2)
  );

CREATE TABLE dbo.professionals
  professional_id INT IDENTITY (1,1) PRIMARY KEY,
  speciality_id INT NOT NULL
  full_name NVARCHAR(255) NOT NULL
  email NVARCHAR(100)
  phone NVARCHAR(20)

  CONSTRAINTS FK_professionals_specialties
    FOREIGN KEY (speciality_id) REFERENCES dbo.specialties(speciality_id)
  );
  
  
GO
