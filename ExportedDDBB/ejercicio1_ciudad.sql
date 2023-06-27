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
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `cod_ciu` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_ciu`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Buenos Aires'),(2,'Córdoba'),(3,'Rosario'),(4,'Mendoza'),(5,'Mar del Plata'),(6,'La Plata'),(7,'San Miguel de Tucumán'),(8,'Salta'),(9,'Santa Fe'),(10,'San Juan'),(11,'Resistencia'),(12,'Neuquén'),(13,'Corrientes'),(14,'Posadas'),(15,'Bahía Blanca'),(16,'San Rafael'),(17,'Jujuy'),(18,'San Salvador de Jujuy'),(19,'La Rioja'),(20,'San Fernando del Valle de Catamarca'),(21,'San Carlos de Bariloche'),(22,'Ushuaia'),(23,'San Luis'),(24,'San Nicolás de los Arroyos'),(25,'Río Cuarto'),(26,'Santa Rosa'),(27,'Viedma'),(28,'Rawson'),(29,'San Rafael'),(30,'San Luis'),(31,'San Martín'),(32,'San Salvador de Catamarca'),(33,'San Pedro'),(34,'San Fernando'),(35,'San Justo'),(36,'San Ramón de la Nueva Orán'),(37,'San Carlos'),(38,'San Antonio de Padua'),(39,'San Francisco'),(40,'San Isidro'),(41,'San Miguel'),(42,'San Miguel de Tucumán'),(43,'San Pedro de Jujuy'),(44,'San Vicente'),(45,'San Andrés de Giles'),(46,'San Antonio de Areco'),(47,'San Clemente del Tuyú'),(48,'San Lorenzo'),(49,'San Bernardo'),(50,'San José'),(51,'Zarate');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 23:56:58
