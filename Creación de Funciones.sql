-- Función para calcular la edad recibiendo la fecha de nacimiento
DELIMITER $$
USE `peliculas`$$
CREATE FUNCTION `calcular_edad` (fecha_nacimiento DATE)
RETURNS INT
NO SQL
BEGIN
	DECLARE dia_nacimiento INT;
	DECLARE dia_del_año INT;
    DECLARE año_nacimiento INT;
	DECLARE año_actual INT;
    DECLARE edad INT;
    
    SET dia_nacimiento = dayofyear(fecha_nacimiento);
    SET dia_del_año = dayofyear(curdate());
    SET año_nacimiento = year(fecha_nacimiento);
    SET año_actual = year(curdate());
    
    IF (dia_del_año < dia_nacimiento) THEN
		SET edad = año_actual - año_nacimiento - 1;
	ELSE
		SET edad = año_actual - año_nacimiento;
	END IF;
    
	RETURN edad;
END$$
DELIMITER ;

-- Recibe dos id de peliculas y devuelve la diferencia entre lo que recaudo cada una
DELIMITER $$
USE `peliculas`$$
CREATE FUNCTION `diferencia_recaudacion` (id_1 INT, id_2 INT)
RETURNS INT
READS SQL DATA	
BEGIN
	DECLARE pelicula_recaudacion_1 INT;
    DECLARE pelicula_recaudacion_2 INT;
	DECLARE diferencia INT;
    
    SET pelicula_recaudacion_1 =
		(SELECT dinero_recaudado FROM peliculas p
		WHERE p.id_pelicula = id_1);
	SET pelicula_recaudacion_2 =
		(SELECT dinero_recaudado FROM peliculas p
		WHERE p.id_pelicula = id_2);
        
	IF (pelicula_recaudacion_1 < pelicula_recaudacion_2) THEN
		SET diferencia = pelicula_recaudacion_2 - pelicula_recaudacion_1;
	ELSE
		SET diferencia = pelicula_recaudacion_1 - pelicula_recaudacion_2;
	END IF;
    
	RETURN diferencia;
END$$
DELIMITER ;
