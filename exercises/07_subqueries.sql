-- ============================================
-- SUBCONSULTAS
-- Base de datos: Chinook
-- ============================================

-- 1. Canciones con duración mayor al promedio.

SELECT Name,
       Milliseconds
FROM Track
WHERE Milliseconds >
(
    SELECT AVG(Milliseconds)
    FROM Track
);


-- 2. Facturas con un total mayor al promedio.

SELECT InvoiceId,
       Total
FROM Invoice
WHERE Total >
(
    SELECT AVG(Total)
    FROM Invoice
);


-- 3. Clientes que realizaron al menos una compra.

SELECT FirstName,
       LastName
FROM Customer
WHERE CustomerId IN
(
    SELECT CustomerId
    FROM Invoice
);


-- 4. Artistas que tienen al menos un álbum.

SELECT Name
FROM Artist
WHERE ArtistId IN
(
    SELECT ArtistId
    FROM Album
);


-- 5. Clientes cuyo gasto total fue mayor al promedio
-- del total de las facturas.

SELECT FirstName,
       LastName
FROM Customer
WHERE CustomerId IN
(
    SELECT CustomerId
    FROM Invoice
    GROUP BY CustomerId
    HAVING SUM(Total) >
    (
        SELECT AVG(Total)
        FROM Invoice
    )
);


-- 6. Álbumes del artista "AC/DC".

SELECT Title
FROM Album
WHERE ArtistId =
(
    SELECT ArtistId
    FROM Artist
    WHERE Name = 'AC/DC'
);
