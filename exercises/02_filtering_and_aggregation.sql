-- =====================================
-- SQL Practice
-- Module 2 - SQL for Data Science (UC Davis)
--
-- Database: Chinook
--
-- Topics:
-- - WHERE
-- - BETWEEN
-- - IN
-- - AND / OR
-- - LIKE (Wildcards)
-- - ORDER BY
-- - Arithmetic Operations
-- - DISTINCT
-- - Aggregate Functions
-- - GROUP BY
-- - HAVING
-- =====================================


-- =====================================
-- WHERE
-- Filtra los registros que cumplen una condición.
-- =====================================

SELECT *
FROM Customer
WHERE Country = 'USA';


-- =====================================
-- BETWEEN
-- Filtra valores dentro de un rango
-- (incluye ambos extremos).
-- =====================================

SELECT *
FROM Track
WHERE Milliseconds BETWEEN 200000 AND 300000;


-- =====================================
-- IN
-- Permite buscar varios valores sin escribir
-- múltiples OR.
-- =====================================

SELECT *
FROM Customer
WHERE Country IN ('USA', 'Canada', 'Brazil');


-- =====================================
-- AND
-- Devuelve únicamente los registros que cumplen
-- todas las condiciones.
-- =====================================

SELECT *
FROM Customer
WHERE Country = 'USA'
AND City = 'New York';


-- =====================================
-- OR
-- Devuelve los registros que cumplen al menos
-- una de las condiciones.
-- =====================================

SELECT *
FROM Customer
WHERE Country = 'USA'
OR Country = 'Canada';


-- =====================================
-- Precedencia de AND y OR
--
-- SQL evalúa primero AND y luego OR.
--
-- Equivale a:
--
-- Country = 'USA'
-- OR (Country = 'Canada' AND City = 'Edmonton')
-- =====================================

SELECT *
FROM Customer
WHERE Country = 'USA'
OR Country = 'Canada'
AND City = 'Edmonton';


-- =====================================
-- Uso de paréntesis
--
-- Los paréntesis modifican el orden de evaluación.
--
-- En este caso primero se evalúa el OR
-- y luego el AND.
-- =====================================

SELECT *
FROM Customer
WHERE (Country = 'USA'
       OR Country = 'Canada')
AND City = 'Edmonton';


-- =====================================
-- LIKE
-- El comodín % representa cualquier cantidad
-- de caracteres.
-- =====================================

SELECT *
FROM Customer
WHERE LastName LIKE 'S%';


-- =====================================
-- ORDER BY
-- Ordena los resultados.
-- ASC = Ascendente (por defecto)
-- DESC = Descendente
-- =====================================

SELECT *
FROM Customer
ORDER BY LastName ASC;


-- =====================================
-- Operaciones matemáticas
-- Permite realizar cálculos utilizando
-- columnas de la consulta.
-- =====================================

SELECT
    Name,
    UnitPrice,
    UnitPrice * 1.22 AS PriceWithTax
FROM Track;


-- =====================================
-- DISTINCT
-- Elimina valores duplicados y devuelve
-- únicamente valores únicos.
-- =====================================

SELECT DISTINCT Country
FROM Customer;


-- =====================================
-- Funciones agregadas
--
-- COUNT() -> Cuenta registros.
-- AVG()   -> Calcula el promedio.
-- SUM()   -> Calcula la suma.
-- MIN()   -> Obtiene el valor mínimo.
-- MAX()   -> Obtiene el valor máximo.
-- =====================================

-- Cantidad total de clientes
SELECT COUNT(*) AS TotalCustomers
FROM Customer;

-- Precio promedio de las canciones
SELECT AVG(UnitPrice) AS AveragePrice
FROM Track;

-- Precio mínimo
SELECT MIN(UnitPrice) AS MinimumPrice
FROM Track;

-- Precio máximo
SELECT MAX(UnitPrice) AS MaximumPrice
FROM Track;

-- Suma de todos los precios
SELECT SUM(UnitPrice) AS TotalPrice
FROM Track;


-- =====================================
-- GROUP BY
-- Agrupa los registros antes de aplicar
-- una función agregada.
-- =====================================

SELECT
    Country,
    COUNT(*) AS TotalCustomers
FROM Customer
GROUP BY Country;


-- =====================================
-- HAVING
-- Filtra los grupos creados por GROUP BY.
-- Se utiliza después de GROUP BY y suele
-- combinarse con funciones agregadas.
-- =====================================

SELECT
    Country,
    COUNT(*) AS TotalCustomers
FROM Customer
GROUP BY Country
HAVING COUNT(*) >= 5;


-- =====================================
-- Diferencia entre WHERE y HAVING
--
-- WHERE:
-- Filtra filas antes de agrupar los datos.
--
-- HAVING:
-- Filtra grupos después de aplicar GROUP BY.
-- =====================================
