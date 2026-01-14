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

CREATE TABLE dbo.specialities(
  speciality_id INT IDENTITY (1,1) PRIMARY KEY,
  speciality_name NVARCHAR(80) NOT NULL
  );
GO
