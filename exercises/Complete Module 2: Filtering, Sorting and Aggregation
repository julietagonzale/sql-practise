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
-- Permite buscar varios valores sin escribir muchos OR.
-- =====================================

SELECT *
FROM customers
WHERE country IN ('USA', 'Canada', 'Mexico');


-- =====================================
-- AND
-- Devuelve únicamente los registros que cumplen TODAS las condiciones.
-- =====================================

SELECT *
FROM customers
WHERE country = 'USA'
AND city = 'New York';


-- =====================================
-- OR
-- Devuelve los registros que cumplen AL MENOS una de las condiciones.
-- =====================================

SELECT *
FROM customers
WHERE country = 'USA'
OR country = 'Canada';


-- =====================================
-- Precedencia de AND y OR
--
-- IMPORTANTE:
-- SQL evalúa primero AND y luego OR.
--
-- La siguiente consulta es equivalente a:
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
-- Los paréntesis permiten cambiar el orden de evaluación.
--
-- En este caso primero se evalúa el OR y luego el AND.
-- =====================================

SELECT *
FROM customers
WHERE (country = 'USA'
       OR country = 'Canada')
AND city = 'Toronto';


-- =====================================
-- LIKE
-- El comodín % representa cualquier cantidad de caracteres.
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
-- Permite realizar cálculos con los valores de las columnas.
-- =====================================

SELECT
    product_name,
    price,
    price * 1.21 AS final_price
FROM products;


-- =====================================
-- Funciones agregadas
-- AVG calcula el promedio.
-- También existen:
-- COUNT(), SUM(), MIN() y MAX().
-- =====================================

SELECT AVG(price) AS average_price
FROM products;


-- =====================================
-- GROUP BY
-- Agrupa los registros antes de aplicar funciones agregadas.
-- =====================================

SELECT
    country,
    COUNT(*) AS total_customers
FROM customers
GROUP BY country;
