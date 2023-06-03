CREATE DATABASE  IF NOT EXISTS `ejercicio5` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio5`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio5
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `viaje`
--

DROP TABLE IF EXISTS `viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viaje` (
  `nro_chofer` int NOT NULL,
  `nro_cliente` int NOT NULL,
  `patente` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `km_totales` int NOT NULL,
  `tiempo_espera` time NOT NULL,
  PRIMARY KEY (`nro_chofer`,`nro_cliente`,`patente`,`fecha`),
  KEY `fk_nro_cliente` (`nro_cliente`),
  KEY `fk_patente` (`patente`),
  CONSTRAINT `fk_nro_chofer` FOREIGN KEY (`nro_chofer`) REFERENCES `chofer` (`nro_chofer`),
  CONSTRAINT `fk_nro_cliente` FOREIGN KEY (`nro_cliente`) REFERENCES `cliente` (`nro_cliente`),
  CONSTRAINT `fk_patente` FOREIGN KEY (`patente`) REFERENCES `auto` (`patente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viaje`
--

LOCK TABLES `viaje` WRITE;
/*!40000 ALTER TABLE `viaje` DISABLE KEYS */;
INSERT INTO `viaje` VALUES (1,2,'AAA123','2005-05-15',25,'00:35:15'),(1,30,'GGG901','2005-05-14',3,'00:05:16'),(2,20,'CCC789','2005-01-12',35,'00:35:15'),(2,30,'LLL456','2005-01-27',35,'00:11:15'),(3,10,'OOO345','2005-05-26',15,'00:15:00'),(4,4,'PPP678','2005-04-05',1,'00:45:54'),(5,30,'DDD012','2005-06-09',2,'00:30:19'),(6,3,'BBB456','2005-05-30',10,'00:15:05'),(7,1,'III567','2005-03-25',65,'00:05:15'),(7,10,'OOO345','2005-08-17',70,'00:10:15'),(7,20,'CCC789','2005-05-25',65,'00:35:15'),(8,7,'BBB456','2005-01-29',40,'00:21:15'),(8,10,'DDD012','2005-02-25',31,'00:17:15'),(9,5,'SSS567','2005-07-16',110,'00:35:15'),(9,6,'NNN012','2005-11-21',89,'00:37:15');
/*!40000 ALTER TABLE `viaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-03  0:23:39
