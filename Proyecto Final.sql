CREATE SCHEMA peliculas;
USE peliculas;

-- Creo tabla Directores
CREATE TABLE Directores (
	id_director INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    pais VARCHAR(30) NOT NULL,
    cantidad_premios INT,
    cantidad_peliculas_dirigidas INT,
    fecha_nacimiento DATE,
    PRIMARY KEY (id_director)
);

-- Creo tabla Peliculas
CREATE TABLE Peliculas (
	id_pelicula INT NOT NULL AUTO_INCREMENT,
    id_director INT,
    nombre VARCHAR(30) NOT NULL,
    puntaje REAL NOT NULL,
    fecha_estreno DATE NOT NULL,
    cantidad_premios INT,
    dinero_recaudado INT,
	PRIMARY KEY (id_pelicula),
    FOREIGN KEY (id_director) REFERENCES Directores(id_director)
);

-- Creo tabla Actores
CREATE TABLE Actores (
	id_actor INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    pais VARCHAR(30) NOT NULL,
    cantidad_premios INT,
    ultima_pelicula VARCHAR(30),
    fecha_nacimiento DATE NOT NULL,
    PRIMARY KEY (id_actor)
);

-- Creo tabla Generos
CREATE TABLE Generos (
	id_genero INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(15) NOT NULL,
    cantidad_peliculas INT,
    PRIMARY KEY (id_genero)
);

-- Creo tabla Servicios
CREATE TABLE Servicios (
	id_servicio INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    pagina_web VARCHAR(50) NOT NULL,
    precio_mensual REAL NOT NULL,
    cantidad_peliculas INT,
    PRIMARY KEY (id_servicio)
);

-- Creo tabla que relaciona Servicios y Peliculas
CREATE TABLE ServiciosPeliculas (
	id_relacion INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_servicio INT NOT NULL,
    PRIMARY KEY (id_relacion),
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas (id_pelicula),
    FOREIGN KEY (id_servicio) REFERENCES Servicios (id_servicio)
);

-- Creo tabla que relaciona Generos y Peliculas
CREATE TABLE GenerosPeliculas (
	id_relacion INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_genero INT NOT NULL,
    PRIMARY KEY (id_relacion),
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas (id_pelicula),
    FOREIGN KEY (id_genero) REFERENCES Generos (id_genero)
);

-- Creo tabla que relaciona Actores y Peliculas
CREATE TABLE ActoresPeliculas (
	id_relacion INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_actor INT NOT NULL,
    PRIMARY KEY (id_relacion),
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas (id_pelicula),
    FOREIGN KEY (id_actor) REFERENCES Actores (id_actor)
);