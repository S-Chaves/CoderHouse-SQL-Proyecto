-- Función para calcular el tiempo que paso en años desde un evento,
-- como el estreno de una película o el nacimiento de una persona.
DELIMITER $$
USE `peliculas`$$
CREATE FUNCTION `calcular_tiempo` (fecha_inicio DATE)
RETURNS INT
NO SQL
BEGIN
	DECLARE dia_inicio INT;
	DECLARE dia_del_año INT;
    DECLARE año_inicio INT;
	DECLARE año_actual INT;
    DECLARE tiempo INT;
    
    SET dia_inicio = dayofyear(fecha_inicio);
    SET dia_del_año = dayofyear(curdate());
    SET año_inicio = year(fecha_inicio);
    SET año_actual = year(curdate());
    
    IF (dia_del_año < dia_inicio) THEN
		SET tiempo = año_actual - año_inicio - 1;
	ELSE
		SET tiempo = año_actual - año_inicio;
	END IF;
    
	RETURN tiempo;
END$$
DELIMITER ;

-- Recibe dos id de peliculas y devuelve el nombre de la que más recaudo.
DELIMITER $$
USE `peliculas`$$
CREATE FUNCTION `mayor_recaudacion` (id_1 INT, id_2 INT)
RETURNS VARCHAR(40)
READS SQL DATA	
BEGIN
	DECLARE pelicula_recaudacion_1 INT;
    DECLARE pelicula_recaudacion_2 INT;
	DECLARE mayor VARCHAR(40);
    
    SET pelicula_recaudacion_1 =
		(SELECT dinero_recaudado FROM peliculas p
		WHERE p.id_pelicula = id_1);
	SET pelicula_recaudacion_2 =
		(SELECT dinero_recaudado FROM peliculas p
		WHERE p.id_pelicula = id_2);
        
	IF (pelicula_recaudacion_1 < pelicula_recaudacion_2) THEN
		SET mayor = (SELECT nombre FROM peliculas p
			WHERE p.id_pelicula = id_2);
	ELSE
		SET mayor = (SELECT nombre FROM peliculas p
			WHERE p.id_pelicula = id_1);
	END IF;
    
	RETURN mayor;
END$$
DELIMITER ;

-- Pruebas de las funciones.
-- SELECT
-- 	concat(nombre, ' ', apellido) AS Director,
-- 	calcular_tiempo(fecha_nacimiento) AS Edad 
-- FROM directores;
-- SELECT mayor_recaudacion(3, 5);
