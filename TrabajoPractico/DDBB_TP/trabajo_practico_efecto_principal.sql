CREATE DATABASE  IF NOT EXISTS `trabajo_practico` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trabajo_practico`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: trabajo_practico
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
-- Table structure for table `efecto_principal`
--

DROP TABLE IF EXISTS `efecto_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `efecto_principal` (
  `id_efecto_principal` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_efecto_principal`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `efecto_principal`
--

LOCK TABLES `efecto_principal` WRITE;
/*!40000 ALTER TABLE `efecto_principal` DISABLE KEYS */;
INSERT INTO `efecto_principal` VALUES (1,'Reducción de la inflamación muscular'),(2,'Alivio del dolor de cabeza'),(3,'Mejora de la movilidad articular'),(4,'Disminución de la fatiga'),(5,'Reducción de los síntomas de la gripe'),(6,'Alivio del malestar estomacal'),(7,'Mejora de la concentración mental'),(8,'Reducción de la ansiedad'),(9,'Alivio de los síntomas de la alergia'),(10,'Mejora del estado de ánimo'),(11,'Reducción del estrés'),(12,'Alivio del dolor lumbar'),(13,'Mejora del equilibrio'),(14,'Disminución de los calambres musculares'),(15,'Alivio del dolor de espalda'),(16,'Mejora de la calidad del sueño'),(17,'Reducción de la presión arterial'),(18,'Alivio de los síntomas de la migraña'),(19,'Mejora de la digestión'),(20,'Disminución de la rigidez articular'),(21,'Alivio de los síntomas de la artritis'),(22,'Mejora de la circulación sanguínea'),(23,'Reducción del malestar gastrointestinal'),(24,'Alivio del dolor menstrual'),(25,'Mejora de la función respiratoria');
/*!40000 ALTER TABLE `efecto_principal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-04  0:41:43
