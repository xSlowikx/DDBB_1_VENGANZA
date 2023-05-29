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
-- Table structure for table `provisto_por`
--

DROP TABLE IF EXISTS `provisto_por`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provisto_por` (
  `cod_mat` int NOT NULL,
  `cod_prov` int NOT NULL,
  PRIMARY KEY (`cod_mat`,`cod_prov`),
  KEY `fk_cod_prov` (`cod_prov`),
  CONSTRAINT `fk_cod_mat_pp` FOREIGN KEY (`cod_mat`) REFERENCES `material` (`cod_mat`),
  CONSTRAINT `fk_cod_prov` FOREIGN KEY (`cod_prov`) REFERENCES `proveedor` (`cod_prov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provisto_por`
--

LOCK TABLES `provisto_por` WRITE;
/*!40000 ALTER TABLE `provisto_por` DISABLE KEYS */;
INSERT INTO `provisto_por` VALUES (11,1),(31,1),(6,2),(12,2),(14,2),(31,2),(7,3),(10,3),(18,3),(23,3),(28,3),(9,4),(11,4),(21,4),(31,4),(3,5),(6,5),(22,5),(5,6),(12,6),(14,6),(15,6),(23,6),(9,7),(12,7),(14,7),(19,7),(6,8),(19,8),(23,8),(24,8),(29,8),(1,9),(3,9),(5,9),(17,9),(26,9),(7,10),(9,10),(14,10),(16,10),(8,11),(15,11),(17,11),(20,11),(21,11),(4,12),(7,12),(13,12),(30,12),(5,13),(9,13),(15,13),(18,13),(20,13),(21,13),(30,13),(15,14),(22,14),(27,14),(1,15),(2,15),(14,15),(16,15),(21,15),(1,16),(4,16),(5,16),(10,16),(13,16),(2,17),(4,17),(8,17),(12,17),(24,17),(2,18),(5,18),(6,18),(11,18),(31,18),(11,19),(20,19),(23,19),(28,19),(30,19),(8,20),(16,20),(27,20),(3,21),(9,21),(26,21),(25,22),(29,22),(31,22),(16,23),(23,23),(31,23),(12,24),(19,25),(11,26),(8,27),(6,28),(16,29),(17,30);
/*!40000 ALTER TABLE `provisto_por` ENABLE KEYS */;
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
