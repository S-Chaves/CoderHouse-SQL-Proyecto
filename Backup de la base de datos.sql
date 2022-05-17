CREATE DATABASE  IF NOT EXISTS `peliculas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `peliculas`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: peliculas
-- ------------------------------------------------------
-- Server version	8.0.29

-- Las tablas del backup son actores, directores, generos, servicios, peliculas, serviciospeliculas,
-- generospeliculas, actorespeliculas, peliculas_insert_log y peliculas_delete_log.

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
INSERT INTO `actores` VALUES (1,'Tadio','Hapke','Panama',16,'Great Outdoors, The','1975-03-25'),(2,'Archibold','Leng','Russia',10,'Favor, The','1990-06-20'),(3,'Bryna','Howles','Colombia',16,'American Pie The Book of Love','1972-04-05'),(4,'Greggory','Durward','Sweden',12,'When Darkness Falls','1962-11-12'),(5,'Nevil','Benson','Greece',12,'Man Who Loved Women','1984-08-08'),(6,'Dinah','Houson','China',17,'Eden of the East II','1960-03-07'),(7,'Thia','Marcroft','Azerbaijan',5,'One on One','1977-04-12'),(8,'Pierette','Byway','Portugal',9,'Christmas in Connecticut','1992-03-04'),(9,'Percy','Blindt','Philippines',18,'I Want Someone to Eat Cheese','1970-05-04'),(10,'Isaiah','Tixier','Sweden',18,'Stroszek','1996-11-04');
/*!40000 ALTER TABLE `actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `actorespeliculas`
--

LOCK TABLES `actorespeliculas` WRITE;
/*!40000 ALTER TABLE `actorespeliculas` DISABLE KEYS */;
INSERT INTO `actorespeliculas` VALUES (1,8,3),(2,4,6),(3,3,7),(4,4,9),(5,4,10),(6,1,1),(7,2,8),(8,6,10),(9,2,4),(10,10,6),(11,10,2),(12,8,9),(13,2,10),(14,5,9),(15,3,7),(16,10,1),(17,10,3),(18,9,10),(19,6,10),(20,4,1),(21,7,9),(22,2,7);
/*!40000 ALTER TABLE `actorespeliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `directores`
--

LOCK TABLES `directores` WRITE;
/*!40000 ALTER TABLE `directores` DISABLE KEYS */;
INSERT INTO `directores` VALUES (1,'Jackson','MacRierie','Russia',11,16,'1976-08-21'),(2,'Nanice','Wayvill','China',20,14,'1974-02-06'),(3,'Cassandre','Wilsone','Russia',6,11,'1994-12-31'),(4,'Malina','Juza','Chile',1,5,'1985-05-08'),(5,'Wit','Vasin','China',20,23,'1966-04-01'),(6,'Kenna','Trathen','Japan',6,16,'1972-05-31'),(7,'Lanette','Davidsson','Indonesia',20,18,'1960-12-11'),(8,'Obadiah','Westell','Uganda',2,29,'1988-09-04'),(9,'Clayson','Bickerdyke','Iran',18,12,'1994-10-05'),(10,'Simonne','Zorzi','France',14,27,'1985-03-04');
/*!40000 ALTER TABLE `directores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Sci-Fi',7),(2,'Romance',18),(3,'Drama',18),(4,'Comedia',16),(5,'Musical',11);
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `generospeliculas`
--

LOCK TABLES `generospeliculas` WRITE;
/*!40000 ALTER TABLE `generospeliculas` DISABLE KEYS */;
INSERT INTO `generospeliculas` VALUES (1,8,1),(2,4,1),(3,6,2),(4,3,5),(5,2,4),(6,10,2),(7,4,4),(8,5,5),(9,9,1),(10,1,2),(11,3,4),(12,7,5);
/*!40000 ALTER TABLE `generospeliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,2,'Taming the Fire',3.2,'1977-08-08',8,105012923),(2,6,'Prom',4,'1987-03-30',8,374314638),(3,3,'It\'s Alive',8.6,'1990-11-09',7,362915355),(4,2,'Summer in February',8.2,'1987-04-22',1,247863519),(5,6,'Of Unknown Origin',1.8,'1985-09-12',13,370598982),(6,1,'American Addict',2.3,'1959-02-21',13,157221482),(7,10,'Belle comme la femme',5.7,'1970-06-23',10,70043827),(8,2,'Precious',2.2,'1984-04-28',5,351896624),(9,4,'Seagull\'s Laughter',1.9,'1969-05-08',22,453621353),(10,5,'Bigga Than Ben',3.1,'1996-12-11',18,191516833),(11,4,'Titanic',9,'1998-02-05',11,703015323);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `peliculas_delete_log`
--

LOCK TABLES `peliculas_delete_log` WRITE;
/*!40000 ALTER TABLE `peliculas_delete_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `peliculas_delete_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `peliculas_insert_log`
--

LOCK TABLES `peliculas_insert_log` WRITE;
/*!40000 ALTER TABLE `peliculas_insert_log` DISABLE KEYS */;
INSERT INTO `peliculas_insert_log` VALUES (1,'Titanic','root@localhost','2022-05-17','17:47:13');
/*!40000 ALTER TABLE `peliculas_insert_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Disney Plus','https://www.disneyplus.com/',2.5,64),(2,'Netflix','https://www.netflix.com/',3.1,132),(3,'Prime Video','https://www.primevideo.com/',12.9,194),(4,'HBO Max','https://www.hbomax.com/',15.4,65),(5,'Paramount Plus','https://www.paramountplus.com/',8.4,138);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `serviciospeliculas`
--

LOCK TABLES `serviciospeliculas` WRITE;
/*!40000 ALTER TABLE `serviciospeliculas` DISABLE KEYS */;
INSERT INTO `serviciospeliculas` VALUES (1,10,3),(2,9,4),(3,4,1),(4,6,2),(5,2,2),(6,3,1),(7,9,2),(8,1,4),(9,3,4),(10,8,3),(11,5,5),(12,7,1);
/*!40000 ALTER TABLE `serviciospeliculas` ENABLE KEYS */;
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
