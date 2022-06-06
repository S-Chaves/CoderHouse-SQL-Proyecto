USE peliculas;

START TRANSACTION;
-- Borro las relaciones de las peliculas con id mayor a 6 y menor a 9.
DELETE FROM actores_peliculas 
WHERE (id_pelicula > 6) AND (id_pelicula < 9);
-- Sentencias Rollback y Commit.
-- ROLLBACK;
-- COMMIT;

START TRANSACTION;
-- Inserto los primeros cuatro directores.
INSERT INTO directores (id_director, id_pais, nombre, apellido, cantidad_premios, cantidad_peliculas_dirigidas, fecha_nacimiento) VALUES 
(NULL, 4, 'Francis', 'Ford Coppola', 49, 37, '1939-03-07'),
(NULL, 4, 'Robert', 'Zemeckis', 35, 33, '1951-05-14'),
(NULL, 4, 'David', 'Fincher', 70, 95, '1962-08-28'),
(NULL, 4, 'Irvin', 'Kershner', 5, 32, '1923-03-29');
-- Creo un savepoint después de estos.
SAVEPOINT primeros_cuatro_directores;
-- Inserto los otros cuatro directores.
INSERT INTO directores (id_director, id_pais, nombre, apellido, cantidad_premios, cantidad_peliculas_dirigidas, fecha_nacimiento) VALUES 
(NULL, 4, 'Steven', 'Spielberg', 195, 57, '1946-12-18'),
(NULL, 8, 'Alfred', 'Hitchcock', 31, 69, '1899-08-13'),
(NULL, 8, 'Ridley', 'Scott', 49, 56, '1937-11-30'),
(NULL, 4, 'Joseph', 'Kosinski', 0, 9, '1974-05-03');
SAVEPOINT otros_cuatro_directores;
-- Rollback al primer savepoint
-- ROLLBACK TO primeros_cuatro_directores;

-- Eliminación del primer savepoint.
-- RELEASE SAVEPOINT primeros_cuatro_directores;

-- ROLLBACK;
-- COMMIT;
