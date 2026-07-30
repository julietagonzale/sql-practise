-- ============================================
-- JOINS
-- Base de datos: Chinook
-- ============================================

------------------------------------------------
-- JOIN (INNER JOIN)
------------------------------------------------

-- 1. Mostrar cada factura junto con el nombre del cliente.

SELECT c.FirstName,
       c.LastName,
       i.InvoiceId,
       i.InvoiceDate,
       i.Total
FROM Customer c
JOIN Invoice i
ON c.CustomerId = i.CustomerId;


-- 2. Mostrar cada canción junto con su álbum.

SELECT t.Name AS Cancion,
       a.Title AS Album
FROM Track t
JOIN Album a
ON t.AlbumId = a.AlbumId;


-- 3. Mostrar cada álbum junto con su artista.

SELECT a.Title AS Album,
       ar.Name AS Artista
FROM Album a
JOIN Artist ar
ON a.ArtistId = ar.ArtistId;


-- 4. Mostrar canción, álbum y artista.

SELECT t.Name AS Cancion,
       a.Title AS Album,
       ar.Name AS Artista
FROM Track t
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN Artist ar
ON a.ArtistId = ar.ArtistId;


------------------------------------------------
-- LEFT JOIN
------------------------------------------------

-- 5. Mostrar todos los clientes y sus facturas.
-- Los clientes sin facturas también aparecen.

SELECT c.FirstName,
       c.LastName,
       i.InvoiceId,
       i.Total
FROM Customer c
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId;


-- 6. Mostrar todos los artistas y sus álbumes.
-- Si un artista no tiene álbumes, igual aparece.

SELECT ar.Name AS Artista,
       a.Title AS Album
FROM Artist ar
LEFT JOIN Album a
ON ar.ArtistId = a.ArtistId;


-- 7. Mostrar todos los empleados y los clientes que atienden.

SELECT e.FirstName AS NombreEmpleado,
       e.LastName AS ApellidoEmpleado,
       c.FirstName AS NombreCliente,
       c.LastName AS ApellidoCliente
FROM Employee e
LEFT JOIN Customer c
ON e.EmployeeId = c.SupportRepId;
