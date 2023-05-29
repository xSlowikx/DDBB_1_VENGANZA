CREATE DATABASE  IF NOT EXISTS `ejercicio1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio1`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio1
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
-- Table structure for table `contiene`
--

DROP TABLE IF EXISTS `contiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contiene` (
  `nro_almacen` int NOT NULL,
  `cod_art` int NOT NULL,
  PRIMARY KEY (`nro_almacen`,`cod_art`),
  KEY `fk_cod_art` (`cod_art`),
  CONSTRAINT `fk_cod_art` FOREIGN KEY (`cod_art`) REFERENCES `articulo` (`cod_art`),
  CONSTRAINT `fk_nro_almacen` FOREIGN KEY (`nro_almacen`) REFERENCES `almacen` (`nro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contiene`
--

LOCK TABLES `contiene` WRITE;
/*!40000 ALTER TABLE `contiene` DISABLE KEYS */;
INSERT INTO `contiene` VALUES (3,1),(4,1),(5,1),(6,1),(8,1),(9,1),(1,2),(4,2),(9,2),(10,2),(1,3),(2,3),(3,3),(8,3),(9,3),(2,4),(6,4),(7,4),(10,4),(4,5),(5,5),(8,5),(2,6),(4,6),(7,6),(9,6),(10,6),(1,7),(2,7),(3,7),(5,7),(8,7),(9,7),(2,8),(3,8),(4,8),(6,8),(7,8),(1,9),(2,9),(5,9),(6,9),(10,9),(1,10),(3,10),(6,10),(10,10),(5,11),(8,11),(9,11),(1,12),(4,12),(7,12),(10,12),(2,13),(3,13),(5,13),(7,13),(9,13),(2,14),(5,14),(8,14),(10,14),(1,15),(4,15),(6,15),(9,15),(1,16),(3,16),(6,16),(9,16),(10,16),(3,17),(6,17),(8,17),(10,17),(1,18),(2,18),(10,18),(4,19),(5,19),(7,19),(9,19),(2,20),(4,20),(6,20),(9,20),(1,21),(6,21),(7,21),(8,21),(3,22),(5,22),(7,22),(8,22),(3,23),(4,23),(5,23),(7,23),(8,23);
/*!40000 ALTER TABLE `contiene` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 23:56:57
