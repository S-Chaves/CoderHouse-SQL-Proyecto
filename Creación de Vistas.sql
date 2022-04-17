USE peliculas;

-- Permite ver las últimas cinco películas según su fecha de estreno.
CREATE VIEW ultimas_cinco_peliculas AS
SELECT 
	nombre AS Película, fecha_estreno AS 'Fecha de Estreno' FROM peliculas
ORDER BY fecha_estreno DESC
LIMIT 5;

-- Permite ver quien dirigió cada película.
CREATE VIEW director_de_cada_pelicula AS
SELECT 
	p.nombre AS Película,
    concat(d.nombre, ' ', d.apellido) AS Director 
FROM peliculas p 
JOIN directores d ON (p.id_director = d.id_director);

-- Permite ver cuanto dinero recaudó cada género.
CREATE VIEW dinero_total_por_genero AS
SELECT 
	g.nombre AS Género,
    SUM(p.dinero_recaudado) AS DineroTotalRecaudado
FROM generospeliculas gp
	JOIN peliculas p ON (gp.id_pelicula = p.id_pelicula)
	JOIN generos g ON (gp.id_genero = g.id_genero)
GROUP BY g.nombre
ORDER BY DineroTotalRecaudado DESC;

-- Permite ver que servicio tiene las películas con mejor puntaje al menor precio.
CREATE VIEW mejores_peliculas_menor_precio AS
SELECT
	p.nombre AS Película,
    p.puntaje AS PuntajePelícula,
    s.nombre AS Servicio,
    s.precio_mensual AS PrecioServicio
FROM serviciospeliculas sp
	JOIN servicios s ON (sp.id_servicio = s.id_servicio)
	JOIN peliculas p ON (sp.id_pelicula = p.id_pelicula)
WHERE p.puntaje > 5
ORDER BY p.puntaje DESC;

-- Permite ver la cantidad de actores y la suma de sus premios de las películas que tienen directores que dirigieron 
-- más de 15 películas.
CREATE VIEW cant_actores_y_premios_peliculas AS
SELECT
	p.nombre AS Película,
	COUNT(a.nombre) AS CantidadActores,
    SUM(a.cantidad_premios) AS CantidadPremiosActores
FROM actorespeliculas ap
	JOIN actores a ON (ap.id_actor = a.id_actor)
	JOIN peliculas p ON (ap.id_pelicula = p.id_pelicula)
WHERE id_director IN 
	(SELECT id_director FROM directores
	WHERE cantidad_peliculas_dirigidas > 15)
GROUP BY p.nombre
ORDER BY CantidadPremiosActores DESC;

