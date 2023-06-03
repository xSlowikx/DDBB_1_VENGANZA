CREATE DATABASE  IF NOT EXISTS `ejercicio2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio2`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio2
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
-- Table structure for table `avion`
--

DROP TABLE IF EXISTS `avion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avion` (
  `nro_avion` int NOT NULL AUTO_INCREMENT,
  `tipo_avion` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  PRIMARY KEY (`nro_avion`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avion`
--

LOCK TABLES `avion` WRITE;
/*!40000 ALTER TABLE `avion` DISABLE KEYS */;
INSERT INTO `avion` VALUES (1,'Comercial','Airbus A320'),(2,'Comercial','Boeing 737'),(3,'Comercial','Embraer E190'),(4,'Comercial','Bombardier CRJ900'),(5,'Privado','Cessna Citation XLS+'),(6,'Privado','Gulfstream G650'),(7,'Privado','Learjet 75'),(8,'Combate','Lockheed Martin F-22 Raptor'),(9,'Combate','Boeing F/A-18E/F Super Hornet'),(10,'Combate','Dassault Rafale'),(11,'Comercial','Airbus A380'),(12,'Comercial','B-777'),(13,'Comercial','Embraer E195'),(14,'Comercial','Bombardier Q400'),(15,'Privado','Cessna Citation CJ4'),(16,'Privado','Gulfstream G550'),(17,'Privado','Learjet 45'),(18,'Combate','Lockheed Martin F-35 Lightning II'),(19,'Combate','Boeing F-15E Strike Eagle'),(20,'Combate','Saab JAS 39 Gripen'),(21,'Carga','Boeing 747-8F'),(22,'Carga','Airbus A330-200F'),(23,'Carga','Antonov An-124 Ruslan'),(24,'Carga','C-130 Hercules'),(25,'Carga','Boeing 777F'),(26,'Carga','Lockheed Martin C-5M Super Galaxy'),(27,'Carga','Ilyushin Il-76'),(28,'Carga','Douglas DC-8'),(29,'Carga','Embraer KC-390'),(30,'Carga','ATR 72-600F');
/*!40000 ALTER TABLE `avion` ENABLE KEYS */;
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
