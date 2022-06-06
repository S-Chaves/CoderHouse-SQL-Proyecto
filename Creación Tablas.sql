CREATE SCHEMA peliculas;
USE peliculas;

-- Creo tabla Países
CREATE TABLE Paises (
	id_pais INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    cantidad_personas INT,
    PRIMARY KEY (id_pais)
);

-- Creo tabla Idiomas
CREATE TABLE Idiomas (
	id_idioma INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(15) NOT NULL,
    cantidad_peliculas INT,
    PRIMARY KEY (id_idioma)
);

-- Creo tabla Clasificaciones
CREATE TABLE Clasificaciones (
	id_clasificacion INT NOT NULL AUTO_INCREMENT,
    clasificacion VARCHAR(10) NOT NULL,
    cantidad_peliculas INT,
    PRIMARY KEY (id_clasificacion)
);

-- Creo tabla Directores
CREATE TABLE Directores (
	id_director INT NOT NULL AUTO_INCREMENT,
    id_pais INT NOT NULL,
	nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    cantidad_premios INT,
    cantidad_peliculas_dirigidas INT,
    fecha_nacimiento DATE NOT NULL,
    PRIMARY KEY (id_director),
    FOREIGN KEY (id_pais) REFERENCES Paises (id_pais)
);

-- Creo tabla Peliculas
CREATE TABLE Peliculas (
	id_pelicula INT NOT NULL AUTO_INCREMENT,
    id_director INT NOT NULL,
    id_idioma INT,
    id_pais INT,
    id_clasificacion INT,
    nombre VARCHAR(40) NOT NULL,
    puntaje REAL NOT NULL,
    fecha_estreno DATE NOT NULL,
    cantidad_premios INT,
    dinero_recaudado INT,
	PRIMARY KEY (id_pelicula),
    FOREIGN KEY (id_director) REFERENCES Directores (id_director),
	FOREIGN KEY (id_idioma) REFERENCES Idiomas (id_idioma),
	FOREIGN KEY (id_pais) REFERENCES Paises (id_pais),
	FOREIGN KEY (id_clasificacion) REFERENCES Clasificaciones (id_clasificacion)
);

-- Creo tabla Actores
CREATE TABLE Actores (
	id_actor INT NOT NULL AUTO_INCREMENT,
    id_pais INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    cantidad_premios INT,
    ultima_pelicula VARCHAR(40),
    fecha_nacimiento DATE NOT NULL,
    PRIMARY KEY (id_actor),
    FOREIGN KEY (id_pais) REFERENCES Paises (id_pais)
);

-- Creo tabla Escritores
CREATE TABLE Escritores (
	id_escritor INT NOT NULL AUTO_INCREMENT,
    id_pais INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
	ultima_pelicula VARCHAR(40),
    fecha_nacimiento DATE NOT NULL,
	PRIMARY KEY (id_escritor),
    FOREIGN KEY (id_pais) REFERENCES Paises (id_pais)
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
    PRIMARY KEY (id_servicio)
);

-- Creo tabla Premios
CREATE TABLE Premios (
	id_premio INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(15) NOT NULL,
    cantidad_peliculas INT,
    fundacion DATE,
    PRIMARY KEY (id_premio)
);

-- Creo tabla que relaciona Servicios y Peliculas
CREATE TABLE Servicios_Peliculas (
	id_relacion INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_servicio INT NOT NULL,
    PRIMARY KEY (id_relacion),
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas (id_pelicula),
    FOREIGN KEY (id_servicio) REFERENCES Servicios (id_servicio)
);

-- Creo tabla que relaciona Generos y Peliculas
CREATE TABLE Generos_Peliculas (
	id_relacion INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_genero INT NOT NULL,
    PRIMARY KEY (id_relacion),
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas (id_pelicula),
    FOREIGN KEY (id_genero) REFERENCES Generos (id_genero)
);

-- Creo tabla que relaciona Actores y Peliculas
CREATE TABLE Actores_Peliculas (
	id_relacion INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_actor INT NOT NULL,
    PRIMARY KEY (id_relacion),
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas (id_pelicula),
    FOREIGN KEY (id_actor) REFERENCES Actores (id_actor)
);

CREATE TABLE Escritores_Peliculas (
	id_relacion INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_escritor INT NOT NULL,
    PRIMARY KEY (id_relacion),
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas (id_pelicula),
    FOREIGN KEY (id_escritor) REFERENCES Escritores (id_escritor)
);

CREATE TABLE Premios_Peliculas (
	id_relacion INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_premio INT NOT NULL,
    cantidad_premios INT,
    PRIMARY KEY (id_relacion),
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas (id_pelicula),
    FOREIGN KEY (id_premio) REFERENCES Premios (id_premio)
);
