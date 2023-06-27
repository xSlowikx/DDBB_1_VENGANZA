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
-- Table structure for table `compuesto_por`
--

DROP TABLE IF EXISTS `compuesto_por`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compuesto_por` (
  `cod_art` int NOT NULL,
  `cod_mat` int NOT NULL,
  PRIMARY KEY (`cod_art`,`cod_mat`),
  KEY `fk_cod_mat` (`cod_mat`),
  CONSTRAINT `fk_cod_art_cp` FOREIGN KEY (`cod_art`) REFERENCES `articulo` (`cod_art`),
  CONSTRAINT `fk_cod_mat` FOREIGN KEY (`cod_mat`) REFERENCES `material` (`cod_mat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compuesto_por`
--

LOCK TABLES `compuesto_por` WRITE;
/*!40000 ALTER TABLE `compuesto_por` DISABLE KEYS */;
INSERT INTO `compuesto_por` VALUES (9,1),(10,1),(15,1),(16,1),(15,2),(17,2),(18,2),(5,3),(9,3),(21,3),(12,4),(16,4),(17,4),(4,5),(6,5),(9,5),(13,5),(18,5),(2,6),(5,6),(18,6),(3,7),(10,7),(12,7),(21,7),(11,8),(17,8),(20,8),(4,9),(7,9),(10,9),(13,9),(21,9),(22,9),(3,10),(16,10),(1,11),(4,11),(5,11),(18,11),(19,11),(2,12),(6,12),(7,12),(17,12),(12,13),(16,13),(2,14),(6,14),(7,14),(10,14),(15,14),(6,15),(12,15),(14,15),(10,16),(15,16),(20,16),(23,16),(4,17),(9,17),(11,17),(3,18),(13,18),(7,19),(8,19),(16,19),(7,20),(11,20),(13,20),(19,20),(4,21),(11,21),(15,21),(5,22),(14,22),(3,23),(6,23),(15,23),(19,23),(23,23),(8,24),(17,24),(22,25),(9,26),(11,26),(21,26),(14,27),(20,27),(2,28),(3,28),(19,28),(8,29),(22,29),(12,30),(13,30),(19,30),(1,31),(2,31),(4,31),(8,31),(18,31),(22,31),(23,31);
/*!40000 ALTER TABLE `compuesto_por` ENABLE KEYS */;
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
