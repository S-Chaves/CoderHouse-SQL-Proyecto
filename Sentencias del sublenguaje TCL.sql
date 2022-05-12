USE peliculas;

START TRANSACTION;
-- Borro todos actores que tengan un nombre que comienza con la letra P.
DELETE FROM actores
WHERE nombre LIKE 'P%';
-- Sentencias Rollback y Commit.
-- ROLLBACK;
-- COMMIT;

-- Insert con los actores eliminados anteriormente.
-- INSERT INTO actores (id_actor, nombre, apellido, pais, cantidad_premios, ultima_pelicula, fecha_nacimiento) VALUES 
-- (NULL, 'Pierette', 'Byway', 'Portugal', 9, 'Christmas in Connecticut', '1992-03-04'),
-- (NULL, 'Percy', 'Blindt', 'Philippines', 18, 'I Want Someone to Eat Cheese', '1970-05-04');

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
-- Eliminación del primer savepoint.
-- RELEASE SAVEPOINT primeros_cuatro_directores;

-- ROLLBACK;
-- COMMIT;