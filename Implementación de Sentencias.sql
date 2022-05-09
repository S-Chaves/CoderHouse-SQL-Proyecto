USE peliculas;

-- Creo un usuario y le asigno su contraseña.
CREATE USER 'santiago'@'localhost' IDENTIFIED BY 'password123';
-- Le otorgo permiso solo para leer en todas las tablas de la base peliculas.
GRANT SELECT ON peliculas.* TO 'santiago'@'localhost';

-- Creo otro usuario y le asigno su contraseña.
CREATE USER 'mariano'@'localhost' IDENTIFIED BY 'password456';
-- Le otorgo permiso para leer, insertar y actualizar datos en todas las tablas de la base peliculas.
GRANT SELECT, INSERT, UPDATE ON peliculas.* TO 'mariano'@'localhost';