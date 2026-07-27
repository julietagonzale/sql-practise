-- =====================================
-- SQL Practice
-- Module 2 - SQL for Data Science (UC Davis)
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
-- =====================================


-- =====================================
-- WHERE
-- Filtra los registros que cumplen una condición.
-- =====================================

SELECT *
FROM customers
WHERE country = 'USA';


-- =====================================
-- BETWEEN
-- Filtra valores dentro de un rango (incluye ambos extremos).
-- =====================================

SELECT *
FROM products
WHERE price BETWEEN 10 AND 50;


-- =====================================
-- IN
-- Permite buscar varios valores sin escribir múltiples OR.
-- =====================================

SELECT *
FROM customers
WHERE country IN ('USA', 'Canada', 'Mexico');


-- =====================================
-- AND
-- Devuelve únicamente los registros que cumplen
-- todas las condiciones.
-- =====================================

SELECT *
FROM customers
WHERE country = 'USA'
AND city = 'New York';


-- =====================================
-- OR
-- Devuelve los registros que cumplen al menos
-- una de las condiciones.
-- =====================================

SELECT *
FROM customers
WHERE country = 'USA'
OR country = 'Canada';


-- =====================================
-- Precedencia de AND y OR
--
-- SQL evalúa primero AND y luego OR.
--
-- Equivale a:
--
-- country = 'USA'
-- OR (country = 'Canada' AND city = 'Toronto')
-- =====================================

SELECT *
FROM customers
WHERE country = 'USA'
OR country = 'Canada'
AND city = 'Toronto';


-- =====================================
-- Uso de paréntesis
--
-- Los paréntesis modifican el orden de evaluación.
--
-- En este caso primero se evalúa el OR
-- y luego el AND.
-- =====================================

SELECT *
FROM customers
WHERE (country = 'USA'
       OR country = 'Canada')
AND city = 'Toronto';


-- =====================================
-- LIKE
-- El comodín % representa cualquier cantidad
-- de caracteres.
-- =====================================

SELECT *
FROM customers
WHERE first_name LIKE 'A%';


-- =====================================
-- ORDER BY
-- Ordena los resultados.
-- ASC = Ascendente (por defecto)
-- DESC = Descendente
-- =====================================

SELECT *
FROM customers
ORDER BY last_name ASC;


-- =====================================
-- Operaciones matemáticas
-- Permite realizar cálculos utilizando
-- columnas de la consulta.
-- =====================================

SELECT
    product_name,
    price,
    price * 1.21 AS final_price
FROM products;


-- =====================================
-- DISTINCT
-- Elimina valores duplicados y devuelve
-- únicamente valores únicos.
-- =====================================

SELECT DISTINCT country
FROM customers;


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
SELECT COUNT(*) AS total_customers
FROM customers;

-- Precio promedio
SELECT AVG(price) AS average_price
FROM products;

-- Precio mínimo
SELECT MIN(price) AS minimum_price
FROM products;

-- Precio máximo
SELECT MAX(price) AS maximum_price
FROM products;

-- Suma de todos los precios
SELECT SUM(price) AS total_price
FROM products;


-- =====================================
-- GROUP BY
-- Agrupa los registros antes de aplicar
-- una función agregada.
-- =====================================

SELECT
    country,
    COUNT(*) AS total_customers
FROM customers
GROUP BY country;
