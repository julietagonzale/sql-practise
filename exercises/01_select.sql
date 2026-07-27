-- =====================================
-- SQL Practice
-- Module 1 - SQL for Data Science (UC Davis)
--
-- Database: Chinook
--
-- Topics:
-- - SELECT
-- - FROM
-- - LIMIT
-- - CREATE TABLE
-- =====================================


-- =====================================
-- SELECT *
-- Selecciona todas las columnas de una tabla.
-- =====================================

SELECT *
FROM Customer;


-- =====================================
-- SELECT columnas específicas
-- Selecciona únicamente las columnas indicadas.
-- =====================================

SELECT
    FirstName,
    LastName,
    Country
FROM Customer;


-- =====================================
-- LIMIT
-- Limita la cantidad de registros devueltos.
-- =====================================

SELECT *
FROM Track
LIMIT 10;


-- =====================================
-- CREATE TABLE
-- Crea una nueva tabla.
-- =====================================

CREATE TABLE EmployeeExample (
    EmployeeId INTEGER,
    FirstName VARCHAR(40),
    LastName VARCHAR(20),
    HireDate DATE
);
