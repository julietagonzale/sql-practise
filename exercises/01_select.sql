-- =====================================
-- SQL Practice
-- Module 1 - SQL for Data Science (UC Davis)
-- Topics:
-- - SELECT
-- - FROM
-- - LIMIT
-- - CREATE TABLE
-- =====================================

-- Seleccionar todas las columnas
SELECT *
FROM customers;

-- Seleccionar columnas específicas
SELECT first_name, last_name
FROM customers;

-- Mostrar los primeros 10 registros
SELECT *
FROM customers
LIMIT 10;

-- Crear una tabla
CREATE TABLE employees (
    id INTEGER,
    first_name TEXT,
    last_name TEXT
);
