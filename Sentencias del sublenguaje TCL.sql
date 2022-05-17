USE peliculas;

START TRANSACTION;
-- Borro las relaciones de las peliculas con id mayor a 8 y menor a 11.
DELETE FROM actorespeliculas 
WHERE (id_pelicula > 8) AND (id_pelicula < 11);
-- Sentencias Rollback y Commit.
-- ROLLBACK;
-- COMMIT;

-- Insert con las relaciones eliminadas anteriormente.
-- INSERT INTO actorespeliculas (id_actor, nombre, apellido, pais, cantidad_premios, ultima_pelicula, fecha_nacimiento) VALUES 
-- (NULL, 10, 1),
-- (NULL, 10, 6),
-- (NULL, 10, 2),
-- (NULL, 10, 3),
-- (NULL, 9, 10);

START TRANSACTION;
-- Inserto los primeros cuatro directores.
INSERT INTO directores (id_director, nombre, apellido, pais, cantidad_premios, cantidad_peliculas_dirigidas, fecha_nacimiento) VALUES 
(NULL, 'Umberto', 'Uff', 'Somalia', 21, 4, '1996-08-01'),
(NULL, 'Cynthie', 'Adlard', 'Greece', 11, 5, '1991-01-27'),
(NULL, 'Gale', 'Rosenstengel', 'Sweden', 10, 15, '1989-03-13'),
(NULL, 'Jaimie', 'McMichael', 'Peru', 18, 6, '1990-09-09');
-- Creo un savepoint después de estos.
SAVEPOINT primeros_cuatro_directores;
-- Inserto los otros cuatro directores.
INSERT INTO directores (id_director, nombre, apellido, pais, cantidad_premios, cantidad_peliculas_dirigidas, fecha_nacimiento) VALUES 
(NULL, 'Reece', 'Tomes', 'China', 3, 10, '1982-10-13'),
(NULL, 'Bar', 'Durran', 'Philippines', 14, 16, '1985-11-11'),
(NULL, 'Warde', 'Glyne', 'Portugal', 20, 14, '1995-05-31'),
(NULL, 'Robinetta', 'Cabera', 'Norway', 22, 7, '1987-06-01');
SAVEPOINT otros_cuatro_directores;
-- Rollback al primer savepoint
-- ROLLBACK TO primeros_cuatro_directores;

-- Eliminación del primer savepoint.
-- RELEASE SAVEPOINT primeros_cuatro_directores;

-- ROLLBACK;
-- COMMIT;
