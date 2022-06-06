-- Recibe el nombre del campo para ordenar y como se quiere ordenarlo si ASC o DESC, 
-- y devuelve la tabla peliculas ordenada
DELIMITER $$
USE `peliculas`$$
CREATE PROCEDURE `sp_get_peliculas_order` (IN order_campo VARCHAR(30), IN order_direccion VARCHAR(4))
BEGIN
	IF (order_campo <> '') THEN
		SET @sql_campo = order_campo;
	ELSE
		SET @sql_campo = 'id_pelicula';
	END IF;
    
    IF (order_direccion = 'ASC') THEN
		SET @sql_direccion = 'ASC';
	ELSE
		SET @sql_direccion = 'DESC';
    END IF;
    
    SET @clausula = concat('SELECT * FROM peliculas 
    ORDER BY ', @sql_campo,' ', @sql_direccion);
    PREPARE ejecutar FROM @clausula;
    EXECUTE ejecutar;
    DEALLOCATE PREPARE ejecutar;
END$$
DELIMITER ;

-- Recibe nombre, pagina web y precio mensual de un servicio, en ese orden,
-- y agrega el servicio a la tabla servicios
DELIMITER $$
USE `peliculas`$$
CREATE PROCEDURE `sp_agregar_servicio` (IN p_nombre VARCHAR(20), IN p_pagina_web VARCHAR(50),
									IN p_precio_mensual DOUBLE)
BEGIN
	INSERT INTO servicios (id_servicio, nombre, pagina_web, precio_mensual) VALUES 
	(NULL, p_nombre, p_pagina_web, p_precio_mensual);
END$$
DELIMITER ;

-- Pruebas de los stored procedures.
-- call sp_get_peliculas_order('cantidad_premios', 'DESC');
-- call sp_agregar_servicio('Star Plus', 'https://www.starplus.com/', '8.6');
