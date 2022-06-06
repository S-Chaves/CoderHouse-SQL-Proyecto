CREATE DATABASE  IF NOT EXISTS `peliculas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `peliculas`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: peliculas
-- ------------------------------------------------------
-- Server version	8.0.29

-- Las tablas del backup son actores, directores, escritores, peliculas, premios,
-- clasificaciones, paises, idiomas, generos, actores_peliculas, escritores_peliculas,
-- premios_peliculas, generos_peliculas, peliculas_delete_log, peliculas_insert_log,
-- servicios y servicios_peliculas.


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `actores`
--

LOCK TABLES `actores` WRITE;
/*!40000 ALTER TABLE `actores` DISABLE KEYS */;
INSERT INTO `actores` VALUES (1,8,'Christian Charles','Bale',81,'Thor: amor y trueno','1974-01-30'),(2,9,'Heath','Ledger',82,'El imaginario del Doctor Parnassus','1979-04-04'),(3,4,'John Joseph','Travolta',52,'El fanático','1954-02-18'),(4,4,'Samuel L.','Jackson',45,'The Protégé','1948-12-21'),(5,2,'Keanu Charles','Reeves',13,'Matrix Resurrections','1964-02-09'),(6,2,'Carrie-Anne','Moss',5,'Matrix Resurrections','1967-08-21'),(7,6,'Song','Kang-ho',60,'Broker','1967-01-17'),(8,1,'Ricardo','Darín',35,'La odisea de los Giles','1957-01-16'),(9,1,'Darío','Grandinetti',12,'La isla de las mentiras','1959-03-05'),(10,4,'Leonardo','DiCaprio',100,'No mires arriba','1974-11-11'),(11,4,'Jonah','Hill',8,'No mires arriba','1983-12-20'),(12,4,'Jack','Nicholson',86,'¿Cómo sabes si...?','1937-04-22'),(13,8,'Kate','Winslet',102,'Black Beauty','1975-10-05'),(14,7,'Audrey Justine','Tautou',11,'The Jesus Rolls','1976-09-08');
/*!40000 ALTER TABLE `actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `actores_peliculas`
--

LOCK TABLES `actores_peliculas` WRITE;
/*!40000 ALTER TABLE `actores_peliculas` DISABLE KEYS */;
INSERT INTO `actores_peliculas` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,5),(6,3,6),(7,5,7),(8,6,8),(9,6,9),(10,7,10),(11,7,11),(12,8,12),(13,9,10),(14,9,13),(15,10,14);
/*!40000 ALTER TABLE `actores_peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clasificaciones`
--

LOCK TABLES `clasificaciones` WRITE;
/*!40000 ALTER TABLE `clasificaciones` DISABLE KEYS */;
INSERT INTO `clasificaciones` VALUES (1,'G',3),(2,'PG',5),(3,'PG-13',8),(4,'R',4),(5,'NC-17',0);
/*!40000 ALTER TABLE `clasificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `directores`
--

LOCK TABLES `directores` WRITE;
/*!40000 ALTER TABLE `directores` DISABLE KEYS */;
INSERT INTO `directores` VALUES (1,8,'Christopher','Nolan',141,17,'1970-07-30'),(2,4,'Quentin','Tarantino',170,21,'1963-03-27'),(3,4,'Lana','Wachowski',13,14,'1965-06-21'),(4,5,'Hayao','Miyazaki',79,29,'1941-05-01'),(5,6,'Bong','Joon Ho',203,17,'1969-09-14'),(6,1,'Damián','Szifron',36,12,'1975-07-09'),(7,4,'Martin Charles','Scorsese',169,67,'1942-11-17'),(8,4,'Stanley','Kubrick',45,16,'1928-07-26'),(9,4,'James Francis','Cameron',72,26,'1954-08-16'),(10,7,'Jean-Pierre','Jeunet',45,21,'1953-03-09'),(11,4,'Francis','Ford Coppola',49,37,'1939-03-07'),(12,4,'Robert','Zemeckis',35,33,'1951-05-14'),(13,4,'David','Fincher',70,95,'1962-08-28'),(14,4,'Irvin','Kershner',5,32,'1923-03-29');
/*!40000 ALTER TABLE `directores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `escritores`
--

LOCK TABLES `escritores` WRITE;
/*!40000 ALTER TABLE `escritores` DISABLE KEYS */;
INSERT INTO `escritores` VALUES (1,8,'Christopher','Nolan','Tenet','1970-07-30'),(2,8,'Jonathan','Nolan','Interstellar','1976-06-06'),(3,4,'Quentin','Tarantino','Érase una vez en... Hollywood','1963-03-27'),(4,2,'Roger','Avary','Lucky Day','1965-08-23'),(5,4,'Lana','Wachowski','Matrix Resurrections','1965-06-21'),(6,4,'Lilly','Wachowski','Matrix Resurrections','1967-12-29'),(7,5,'Hayao','Miyazaki','Earwig y la bruja','1941-05-01'),(8,6,'Bong','Joon Ho','Parásitos','1969-09-14'),(9,6,'Han','Jin-won','Parásitos','1986-08-09'),(10,1,'Damián','Szifron','Relatos salvajes','1975-07-09'),(11,1,'Germán','Servidio','El sistema K.E.OP/S','1982-01-12'),(12,4,'Terence','Winter','El lobo de Wall Street','1960-10-02'),(13,4,'Stanley','Kubrick','Eyes Wide Shut','1928-07-26'),(14,4,'Diane','Johnson','El resplandor','1934-03-28'),(15,4,'James Francis','Cameron','Terminator: Destino oscuro','1954-08-16'),(16,7,'Jean-Pierre','Jeunet','Bigbug','1953-03-09'),(17,7,'Guillaume','Laurant','Bigbug','1961-11-22');
/*!40000 ALTER TABLE `escritores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `escritores_peliculas`
--

LOCK TABLES `escritores_peliculas` WRITE;
/*!40000 ALTER TABLE `escritores_peliculas` DISABLE KEYS */;
INSERT INTO `escritores_peliculas` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,5),(6,3,6),(7,4,7),(8,5,8),(9,5,9),(10,6,10),(11,6,11),(12,7,12),(13,8,13),(14,8,14),(15,9,15),(16,10,16),(17,10,17);
/*!40000 ALTER TABLE `escritores_peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Sci-Fi',3),(2,'Romance',10),(3,'Drama',18),(4,'Comedia',8),(5,'Acción',13),(6,'Musical',2),(7,'Terror',7);
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `generos_peliculas`
--

LOCK TABLES `generos_peliculas` WRITE;
/*!40000 ALTER TABLE `generos_peliculas` DISABLE KEYS */;
INSERT INTO `generos_peliculas` VALUES (1,1,3),(2,1,5),(3,2,3),(4,2,5),(5,3,1),(6,3,5),(7,4,3),(8,5,3),(9,5,4),(10,6,3),(11,6,4),(12,7,3),(13,8,3),(14,8,7),(15,9,2),(16,9,3),(17,10,2),(18,10,4);
/*!40000 ALTER TABLE `generos_peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `idiomas`
--

LOCK TABLES `idiomas` WRITE;
/*!40000 ALTER TABLE `idiomas` DISABLE KEYS */;
INSERT INTO `idiomas` VALUES (1,'Español',5),(2,'Francés',3),(3,'Inglés',10),(4,'Japonés',2),(5,'Coreano',1);
/*!40000 ALTER TABLE `idiomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'Argentina',2),(2,'Canada',7),(3,'España',5),(4,'Estados Unidos',13),(5,'Japón',3),(6,'Corea del Sur',1),(7,'Francia',3),(8,'Inglaterra',5),(9,'Australia',3);
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,1,3,4,3,'Batman: El caballero de la noche',9,'2008-07-17',103,1004558444),(2,2,3,4,4,'Pulp Fiction',8.9,'1994-10-14',70,213928762),(3,3,3,4,4,'Matrix',8.7,'1999-03-24',42,467222728),(4,4,4,5,2,'El viaje de Chihiro',8.6,'2001-07-20',58,355725195),(5,5,5,6,4,'Parásitos',8.5,'2019-06-05',308,263136741),(6,6,1,1,4,'Relatos Salvajes',8.1,'2014-08-21',49,30642704),(7,7,3,4,4,'El lobo de Wall Street',8.2,'2013-12-17',37,392000694),(8,8,3,4,4,'El resplandor',8.4,'1980-05-23',4,47299460),(9,9,3,4,3,'Titanic',7.9,'1997-12-14',125,2001647264),(10,10,2,7,4,'Amelie',8.3,'2001-04-25',59,174118254);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `peliculas_delete_log`
--

LOCK TABLES `peliculas_delete_log` WRITE;
/*!40000 ALTER TABLE `peliculas_delete_log` DISABLE KEYS */;
INSERT INTO `peliculas_delete_log` VALUES (1,11,'Terminator','root@localhost','2022-06-06','12:38:52');
/*!40000 ALTER TABLE `peliculas_delete_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `peliculas_insert_log`
--

LOCK TABLES `peliculas_insert_log` WRITE;
/*!40000 ALTER TABLE `peliculas_insert_log` DISABLE KEYS */;
INSERT INTO `peliculas_insert_log` VALUES (1,'Terminator','root@localhost','2022-06-06','12:33:56');
/*!40000 ALTER TABLE `peliculas_insert_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `premios`
--

LOCK TABLES `premios` WRITE;
/*!40000 ALTER TABLE `premios` DISABLE KEYS */;
INSERT INTO `premios` VALUES (1,'Golden Globe',5,'1944-01-20'),(2,'Bafta',3,'1949-05-29'),(3,'Oscar',7,'1929-05-16');
/*!40000 ALTER TABLE `premios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `premios_peliculas`
--

LOCK TABLES `premios_peliculas` WRITE;
/*!40000 ALTER TABLE `premios_peliculas` DISABLE KEYS */;
INSERT INTO `premios_peliculas` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,2),(4,2,1,1),(5,2,2,2),(6,2,3,1),(7,3,2,2),(8,3,3,4),(9,4,3,1),(10,5,1,1),(11,5,2,2),(12,5,3,4),(13,6,2,1),(14,7,1,1),(15,7,1,1),(16,9,1,4),(17,9,3,11),(18,10,2,2);
/*!40000 ALTER TABLE `premios_peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Disney Plus','https://www.disneyplus.com/',2.5),(2,'Netflix','https://www.netflix.com/',3.1),(3,'Prime Video','https://www.primevideo.com/',12.9),(4,'HBO Max','https://www.hbomax.com/',15.4),(5,'Paramount Plus','https://www.paramountplus.com/',8.4),(6,'Star Plus','https://www.starplus.com/',8.6);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios_peliculas`
--

LOCK TABLES `servicios_peliculas` WRITE;
/*!40000 ALTER TABLE `servicios_peliculas` DISABLE KEYS */;
INSERT INTO `servicios_peliculas` VALUES (1,10,3),(2,9,4),(3,4,1),(4,6,2),(5,2,2),(6,3,1),(7,9,2),(8,1,4),(9,3,4),(10,8,3),(11,5,5),(12,7,1);
/*!40000 ALTER TABLE `servicios_peliculas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17 17:49:51
