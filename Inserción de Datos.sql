USE peliculas;

INSERT INTO actores (id_actor, nombre, apellido, pais, cantidad_premios, ultima_pelicula, fecha_nacimiento) VALUES 
(NULL, 'Tadio', 'Hapke', 'Panama', 16, 'Great Outdoors, The', '1975-03-25'),
(NULL, 'Archibold', 'Leng', 'Russia', 10, 'Favor, The', '1990-06-20'),
(NULL, 'Bryna', 'Howles', 'Colombia', 16, 'American Pie The Book of Love', '1972-04-05'),
(NULL, 'Greggory', 'Durward', 'Sweden', 12, 'When Darkness Falls', '1962-11-12'),
(NULL, 'Nevil', 'Benson', 'Greece', 12, 'Man Who Loved Women', '1984-08-08'),
(NULL, 'Dinah', 'Houson', 'China', 17, 'Eden of the East II', '1960-03-07'),
(NULL, 'Thia', 'Marcroft', 'Azerbaijan', 5, 'One on One', '1977-04-12'),
(NULL, 'Pierette', 'Byway', 'Portugal', 9, 'Christmas in Connecticut', '1992-03-04'),
(NULL, 'Percy', 'Blindt', 'Philippines', 18, 'I Want Someone to Eat Cheese', '1970-05-04'),
(NULL, 'Isaiah', 'Tixier', 'Sweden', 18, 'Stroszek', '1996-11-04');

INSERT INTO directores (id_director, nombre, apellido, pais, cantidad_premios, cantidad_peliculas_dirigidas, fecha_nacimiento) VALUES 
(NULL, 'Jackson', 'MacRierie', 'Russia', 11, 16, '1976-08-21'),
(NULL, 'Nanice', 'Wayvill', 'China', 20, 14, '1974-02-06'),
(NULL, 'Cassandre', 'Wilsone', 'Russia', 6, 11, '1994-12-31'),
(NULL, 'Malina', 'Juza', 'Chile', 1, 5, '1985-05-08'),
(NULL, 'Wit', 'Vasin', 'China', 20, 23, '1966-04-01'),
(NULL, 'Kenna', 'Trathen', 'Japan', 6, 16, '1972-05-31'),
(NULL, 'Lanette', 'Davidsson', 'Indonesia', 20, 18, '1960-12-11'),
(NULL, 'Obadiah', 'Westell', 'Uganda', 2, 29, '1988-09-04'),
(NULL, 'Clayson', 'Bickerdyke', 'Iran', 18, 12, '1994-10-05'),
(NULL, 'Simonne', 'Zorzi', 'France', 14, 27, '1985-03-04');

INSERT INTO generos (id_genero, nombre, cantidad_peliculas) VALUES 
(NULL, 'Sci-Fi', 7),
(NULL, 'Romance', 18),
(NULL, 'Drama', 18),
(NULL, 'Comedia', 16),
(NULL, 'Musical', 11);

INSERT INTO servicios (id_servicio, nombre, pagina_web, precio_mensual, cantidad_peliculas) VALUES 
(NULL, 'Disney Plus', 'https://www.disneyplus.com/', 2.5, 64),
(NULL, 'Netflix', 'https://www.netflix.com/', 3.1, 132),
(NULL, 'Prime Video', 'https://www.primevideo.com/', 12.9, 194),
(NULL, 'HBO Max', 'https://www.hbomax.com/', 15.4, 65),
(NULL, 'Paramount Plus', 'https://www.paramountplus.com/', 8.4, 138);

INSERT INTO peliculas (id_pelicula, id_director, nombre, puntaje, fecha_estreno, cantidad_premios, dinero_recaudado) VALUES
(NULL, 2, 'Taming the Fire', 3.2, '1977-08-08', 8, 105012923),
(NULL, 6, 'Prom', 4.0, '1987-03-30', 8, 374314638),
(NULL, 3, 'It''s Alive', 8.6, '1990-11-09', 7, 362915355),
(NULL, 2, 'Summer in February', 8.2, '1987-04-22', 1, 247863519),
(NULL, 6, 'Of Unknown Origin', 1.8, '1985-09-12', 13, 370598982),
(NULL, 1, 'American Addict', 2.3, '1959-02-21', 13, 157221482),
(NULL, 10, 'Belle comme la femme', 5.7, '1970-06-23', 10, 70043827),
(NULL, 2, 'Precious', 2.2, '1984-04-28', 5, 351896624),
(NULL, 4, 'Seagull''s Laughter', 1.9, '1969-05-08', 22, 453621353),
(NULL, 5, 'Bigga Than Ben', 3.1, '1996-12-11', 18, 191516833);

INSERT INTO serviciospeliculas (id_relacion, id_pelicula, id_servicio) VALUES 
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

INSERT INTO generospeliculas (id_relacion, id_pelicula, id_genero) VALUES 
(NULL, 8, 1),
(NULL, 4, 1),
(NULL, 6, 2),
(NULL, 3, 5),
(NULL, 2, 4),
(NULL, 10, 2),
(NULL, 4, 4),
(NULL, 5, 5),
(NULL, 9, 1),
(NULL, 1, 2),
(NULL, 3, 4),
(NULL, 7, 5);

INSERT INTO actorespeliculas (id_relacion, id_pelicula, id_actor) VALUES 
(NULL, 8, 3),
(NULL, 4, 6),
(NULL, 3, 7),
(NULL, 4, 9),
(NULL, 4, 10),
(NULL, 1, 1),
(NULL, 2, 8),
(NULL, 6, 10),
(NULL, 2, 4),
(NULL, 10, 6),
(NULL, 10, 2),
(NULL, 8, 9),
(NULL, 2, 10),
(NULL, 5, 9),
(NULL, 3, 7),
(NULL, 10, 1),
(NULL, 10, 3),
(NULL, 9, 10),
(NULL, 6, 10),
(NULL, 4, 1),
(NULL, 7, 9),
(NULL, 2, 7);
