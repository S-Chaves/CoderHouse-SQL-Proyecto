USE peliculas;

-- Inserto datos en la tabla Paises
INSERT INTO paises (id_pais, nombre, cantidad_personas) VALUES
(NULL, 'Argentina', 2),
(NULL, 'Canada', 7),
(NULL, 'España', 5),
(NULL, 'Estados Unidos', 13),
(NULL, 'Japón', 3),
(NULL, 'Corea del Sur', 1),
(NULL, 'Francia', 3),
(NULL, 'Inglaterra', 5),
(NULL, 'Australia', 3);

-- Inserto datos en la tabla Idiomas
INSERT INTO idiomas (id_idioma, nombre, cantidad_peliculas) VALUES 
(NULL, 'Español', 5),
(NULL, 'Francés', 3),
(NULL, 'Inglés', 10),
(NULL, 'Japonés', 2),
(NULL, 'Coreano', 1);

-- Inserto datos en la tabla Calificaciones
INSERT INTO clasificaciones (id_clasificacion, clasificacion, cantidad_peliculas) VALUES
(NULL, 'G', 3),
(NULL, 'PG', 5),
(NULL, 'PG-13', 8),
(NULL, 'R', 4),
(NULL, 'NC-17', 0);

-- Inserto datos en la tabla Premios
INSERT INTO premios (id_premio, nombre, cantidad_peliculas, fundacion) VALUES
(NULL, 'Golden Globe', 5, '1944-01-20'),
(NULL, 'Bafta', 3, '1949-05-29'),
(NULL, 'Oscar', 7, '1929-05-16');

-- Inserto datos en la tabla Servicios
INSERT INTO servicios (id_servicio, nombre, pagina_web, precio_mensual) VALUES 
(NULL, 'Disney Plus', 'https://www.disneyplus.com/', 2.5),
(NULL, 'Netflix', 'https://www.netflix.com/', 3.1),
(NULL, 'Prime Video', 'https://www.primevideo.com/', 12.9),
(NULL, 'HBO Max', 'https://www.hbomax.com/', 15.4),
(NULL, 'Paramount Plus', 'https://www.paramountplus.com/', 8.4);

-- Inserto datos en la tabla Géneros
INSERT INTO generos (id_genero, nombre, cantidad_peliculas) VALUES 
(NULL, 'Sci-Fi', 3),
(NULL, 'Romance', 10),
(NULL, 'Drama', 18),
(NULL, 'Comedia', 8),
(NULL, 'Acción', 13),
(NULL, 'Musical', 2),
(NULL, 'Terror', 7);

-- Inserto datos en la tabla Actores
INSERT INTO actores (id_actor, id_pais, nombre, apellido, cantidad_premios, ultima_pelicula, fecha_nacimiento) VALUES 
(NULL, 8, 'Christian Charles', 'Bale', 81, 'Thor: amor y trueno', '1974-01-30'),
(NULL, 9, 'Heath', 'Ledger', 82, 'El imaginario del Doctor Parnassus', '1979-04-04'),
(NULL, 4, 'John Joseph', 'Travolta', 52, 'El fanático', '1954-02-18'),
(NULL, 4, 'Samuel L.', 'Jackson', 45, 'The Protégé', '1948-12-21'),
(NULL, 2, 'Keanu Charles', 'Reeves', 13, 'Matrix Resurrections', '1964-02-09'),
(NULL, 2, 'Carrie-Anne', 'Moss', 5, 'Matrix Resurrections', '1967-08-21'),
(NULL, 6, 'Song', 'Kang-ho', 60, 'Broker', '1967-01-17'),
(NULL, 1, 'Ricardo', 'Darín', 35, 'La odisea de los Giles', '1957-01-16'),
(NULL, 1, 'Darío', 'Grandinetti', 12, 'La isla de las mentiras', '1959-03-05'),
(NULL, 4, 'Leonardo', 'DiCaprio', 100, 'No mires arriba', '1974-11-11'),
(NULL, 4, 'Jonah', 'Hill', 8, 'No mires arriba', '1983-12-20'),
(NULL, 4, 'Jack', 'Nicholson', 86, '¿Cómo sabes si...?', '1937-04-22'),
(NULL, 8, 'Kate', 'Winslet', 102, 'Black Beauty', '1975-10-05'),
(NULL, 7, 'Audrey Justine', 'Tautou', 11, 'The Jesus Rolls', '1976-09-08');

-- Inserto datos en la tabla Escritores
INSERT INTO escritores (id_escritor, id_pais, nombre, apellido, ultima_pelicula, fecha_nacimiento) VALUES 
(NULL, 8, 'Christopher', 'Nolan', 'Tenet', '1970-07-30'),
(NULL, 8, 'Jonathan', 'Nolan', 'Interstellar', '1976-06-06'),
(NULL, 4, 'Quentin', 'Tarantino', 'Érase una vez en... Hollywood', '1963-03-27'),
(NULL, 2, 'Roger', 'Avary', 'Lucky Day', '1965-08-23'),
(NULL, 4, 'Lana', 'Wachowski', 'Matrix Resurrections', '1965-06-21'),
(NULL, 4, 'Lilly', 'Wachowski', 'Matrix Resurrections', '1967-12-29'),
(NULL, 5, 'Hayao', 'Miyazaki', 'Earwig y la bruja', '1941-05-01'),
(NULL, 6, 'Bong', 'Joon Ho', 'Parásitos', '1969-09-14'),
(NULL, 6, 'Han', 'Jin-won', 'Parásitos', '1986-08-09'),
(NULL, 1, 'Damián', 'Szifron', 'Relatos salvajes', '1975-07-09'),
(NULL, 1, 'Germán', 'Servidio', 'El sistema K.E.OP/S', '1982-01-12'),
(NULL, 4, 'Terence', 'Winter', 'El lobo de Wall Street', '1960-10-02'),
(NULL, 4, 'Stanley', 'Kubrick', 'Eyes Wide Shut', '1928-07-26'),
(NULL, 4, 'Diane', 'Johnson', 'El resplandor', '1934-03-28'),
(NULL, 4, 'James Francis', 'Cameron', 'Terminator: Destino oscuro', '1954-08-16'),
(NULL, 7, 'Jean-Pierre', 'Jeunet', 'Bigbug', '1953-03-09'),
(NULL, 7, 'Guillaume', 'Laurant', 'Bigbug', '1961-11-22');

-- Inserto datos en la tabla Directores
INSERT INTO directores (id_director, id_pais, nombre, apellido, cantidad_premios, cantidad_peliculas_dirigidas, fecha_nacimiento) VALUES 
(NULL, 8, 'Christopher', 'Nolan', 141, 17, '1970-07-30'),
(NULL, 4, 'Quentin', 'Tarantino', 170, 21, '1963-03-27'),
(NULL, 4, 'Lana', 'Wachowski', 13, 14, '1965-06-21'),
(NULL, 5, 'Hayao', 'Miyazaki', 79, 29, '1941-05-01'),
(NULL, 6, 'Bong', 'Joon Ho', 203, 17, '1969-09-14'),
(NULL, 1, 'Damián', 'Szifron', 36, 12, '1975-07-09'),
(NULL, 4, 'Martin Charles', 'Scorsese', 169, 67, '1942-11-17'),
(NULL, 4, 'Stanley', 'Kubrick', 45, 16, '1928-07-26'),
(NULL, 4, 'James Francis', 'Cameron', 72, 26, '1954-08-16'),
(NULL, 7, 'Jean-Pierre', 'Jeunet', 45, 21, '1953-03-09');

-- Inserto datos en la tabla Películas
INSERT INTO peliculas (id_pelicula, id_director, id_idioma, id_pais, id_clasificacion, nombre, puntaje, fecha_estreno, cantidad_premios, dinero_recaudado) VALUES
(NULL, 1, 3, 4, 3, 'Batman: El caballero de la noche', 9.0, '2008-07-17', 103, 1004558444),
(NULL, 2, 3, 4, 4, 'Pulp Fiction', 8.9, '1994-10-14', 70, 213928762),
(NULL, 3, 3, 4, 4, 'Matrix', 8.7, '1999-03-24', 42, 467222728),
(NULL, 4, 4, 5, 2, 'El viaje de Chihiro', 8.6, '2001-07-20', 58, 355725195),
(NULL, 5, 5, 6, 4, 'Parásitos', 8.5, '2019-06-05', 308, 263136741 ),
(NULL, 6, 1, 1, 4, 'Relatos Salvajes', 8.1, '2014-08-21', 49, 30642704),
(NULL, 7, 3, 4, 4, 'El lobo de Wall Street', 8.2, '2013-12-17', 37, 392000694),
(NULL, 8, 3, 4, 4, 'El resplandor', 8.4, '1980-05-23', 4, 47299460 ),
(NULL, 9, 3, 4, 3, 'Titanic', 7.9, '1997-12-14', 125, 2001647264),
(NULL, 10, 2, 7, 4, 'Amelie', 8.3, '2001-04-25', 59, 174118254);

-- Inserto datos en la tabla Premios_Películas
INSERT INTO premios_peliculas (id_relacion, id_pelicula, id_premio, cantidad_premios) VALUES 
(NULL, 1, 1, 1),
(NULL, 1, 2, 1),
(NULL, 1, 3, 2),
(NULL, 2, 1, 1),
(NULL, 2, 2, 2),
(NULL, 2, 3, 1),
(NULL, 3, 2, 2),
(NULL, 3, 3, 4),
(NULL, 4, 3, 1),
(NULL, 5, 1, 1),
(NULL, 5, 2, 2),
(NULL, 5, 3, 4),
(NULL, 6, 2, 1),
(NULL, 7, 1, 1),
(NULL, 7, 1, 1),
(NULL, 9, 1, 4),
(NULL, 9, 3, 11),
(NULL, 10, 2, 2);

-- Inserto datos en la tabla Servicios_Películas
INSERT INTO servicios_peliculas (id_relacion, id_pelicula, id_servicio) VALUES 
(NULL, 10, 3),
(NULL, 9, 4),
(NULL, 4, 1),
(NULL, 6, 2),
(NULL, 2, 2),
(NULL, 3, 1),
(NULL, 9, 2),
(NULL, 1, 4),
(NULL, 3, 4),
(NULL, 8, 3),
(NULL, 5, 5),
(NULL, 7, 1);

-- Inserto datos en la tabla Géneros_Películas
INSERT INTO generos_peliculas (id_relacion, id_pelicula, id_genero) VALUES 
(NULL, 1, 3),
(NULL, 1, 5),
(NULL, 2, 3),
(NULL, 2, 5),
(NULL, 3, 1),
(NULL, 3, 5),
(NULL, 4, 3),
(NULL, 5, 3),
(NULL, 5, 4),
(NULL, 6, 3),
(NULL, 6, 4),
(NULL, 7, 3),
(NULL, 8, 3),
(NULL, 8, 7),
(NULL, 9, 2),
(NULL, 9, 3),
(NULL, 10, 2),
(NULL, 10, 4);

-- Inserto datos en la tabla Actores_Películas
INSERT INTO actores_peliculas (id_relacion, id_pelicula, id_actor) VALUES 
(NULL, 1, 1),
(NULL, 1, 2),
(NULL, 2, 3),
(NULL, 2, 4),
(NULL, 3, 5),
(NULL, 3, 6),
(NULL, 5, 7),
(NULL, 6, 8),
(NULL, 6, 9),
(NULL, 7, 10),
(NULL, 7, 11),
(NULL, 8, 12),
(NULL, 9, 10),
(NULL, 9, 13),
(NULL, 10, 14);

-- Inserto datos en la tabla Escritores_Películas
INSERT INTO escritores_peliculas (id_relacion, id_pelicula, id_escritor) VALUES 
(NULL, 1, 1),
(NULL, 1, 2),
(NULL, 2, 3),
(NULL, 2, 4),
(NULL, 3, 5),
(NULL, 3, 6),
(NULL, 4, 7),
(NULL, 5, 8),
(NULL, 5, 9),
(NULL, 6, 10),
(NULL, 6, 11),
(NULL, 7, 12),
(NULL, 8, 13),
(NULL, 8, 14),
(NULL, 9, 15),
(NULL, 10, 16),
(NULL, 10, 17);
