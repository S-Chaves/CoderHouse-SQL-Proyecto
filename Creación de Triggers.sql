-- Tabla con los logs de los inserts en la tabla películas.
CREATE TABLE peliculas_insert_log (
	id_log INT NOT NULL AUTO_INCREMENT,
    nombre_pelicula VARCHAR(40) NOT NULL,
	usuario VARCHAR(45) NOT NULL,
	fecha DATE NOT NULL,
    hora TIME NOT NULL,
	PRIMARY KEY (id_log)
);
-- Cuando se hace un insert en la tabla películas se registra
-- el usuario, fecha y hora, además del nombre de la nueva película.
DELIMITER $$
USE `peliculas`$$
CREATE DEFINER = CURRENT_USER TRIGGER `tr_insert_log_peliculas`
AFTER INSERT ON `peliculas` 
FOR EACH ROW
BEGIN
	INSERT INTO `peliculas_insert_log`(id_log, nombre_pelicula, usuario, fecha, hora)
    VALUES (NULL, NEW.nombre, user(), curdate(), curtime());
END$$
DELIMITER ;
-- Se insertan datos de prueba
INSERT INTO peliculas (id_pelicula, id_director, id_idioma, id_pais, id_clasificacion, nombre, puntaje, fecha_estreno, cantidad_premios, dinero_recaudado) VALUES
(NULL, 9, 3, 4, 4, 'Terminator', 8.1, '1984-10-26', 8, 78371200);

-- Tabla con los logs de los deletes en la tabla películas.
CREATE TABLE peliculas_delete_log (
	id_log INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    nombre_pelicula VARCHAR(40) NOT NULL,
	usuario VARCHAR(45) NOT NULL,
	fecha DATE NOT NULL,
    hora TIME NOT NULL,
	PRIMARY KEY (id_log)
);
-- Cuando se hace un delete en la tabla películas se registra
-- el usuario, fecha y hora, además del id y nombre de la película borrada.
DELIMITER $$
USE `peliculas`$$
CREATE DEFINER = CURRENT_USER TRIGGER `tr_delete_log_peliculas`
BEFORE DELETE ON `peliculas` 
FOR EACH ROW
BEGIN
	INSERT INTO `peliculas_delete_log`(id_log, id_pelicula, nombre_pelicula, usuario, fecha, hora)
    VALUES (NULL, OLD.id_pelicula, OLD.nombre, user(), curdate(), curtime());
END$$
DELIMITER ;
-- Se eliminan datos de prueba
DELETE FROM peliculas
WHERE nombre = 'Terminator' LIMIT 1;
