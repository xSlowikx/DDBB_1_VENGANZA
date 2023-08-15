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
-- Table structure for table `tratamiento`
--

DROP TABLE IF EXISTS `tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamiento` (
  `id_tratamiento` int NOT NULL AUTO_INCREMENT,
  `id_nomenclatura` decimal(4,2) NOT NULL,
  `id_tipo_tratamiento` tinyint NOT NULL,
  `id_efecto_principal` int NOT NULL,
  `id_centro_salud` int NOT NULL,
  `id_zona_cuerpo` tinyint NOT NULL,
  `cuil_profesional` bigint DEFAULT NULL,
  `cuil_paciente` bigint NOT NULL,
  `de_tipo` varchar(25) NOT NULL,
  PRIMARY KEY (`id_tratamiento`),
  KEY `fk_id_tipo_tratamiento` (`id_tipo_tratamiento`),
  KEY `fk_id_efecto_principal` (`id_efecto_principal`),
  KEY `fk_id_centro_salud` (`id_centro_salud`),
  KEY `fk_id_zona_cuerpo` (`id_zona_cuerpo`),
  KEY `fk_cuil_profesional_tratamiento_idx` (`cuil_profesional`),
  KEY `fk_cuil_paciente_tratamiento_idx` (`cuil_paciente`),
  KEY `fk_id_nomenclatura_idx` (`id_nomenclatura`),
  CONSTRAINT `fk_cuil_paciente_tratamiento` FOREIGN KEY (`cuil_paciente`) REFERENCES `paciente` (`cuil_paciente`),
  CONSTRAINT `fk_cuil_profesional_tratamiento` FOREIGN KEY (`cuil_profesional`) REFERENCES `profesional` (`cuil_profesional`),
  CONSTRAINT `fk_id_centro_salud` FOREIGN KEY (`id_centro_salud`) REFERENCES `centro_salud` (`id_centro_salud`),
  CONSTRAINT `fk_id_efecto_principal` FOREIGN KEY (`id_efecto_principal`) REFERENCES `efecto_principal` (`id_efecto_principal`),
  CONSTRAINT `fk_id_nomenclatura` FOREIGN KEY (`id_nomenclatura`) REFERENCES `nomenclatura` (`id_nomenclatura`),
  CONSTRAINT `fk_id_tipo_tratamiento` FOREIGN KEY (`id_tipo_tratamiento`) REFERENCES `tipo_tratamiento` (`id_tipo_tratamiento`),
  CONSTRAINT `fk_id_zona_cuerpo` FOREIGN KEY (`id_zona_cuerpo`) REFERENCES `zona_cuerpo` (`id_zona_cuerpo`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
INSERT INTO `tratamiento` VALUES (21,5.01,6,4,10,6,20123446781,62827386287,'Compuesto Farmacologico'),(22,10.03,6,23,7,15,20123456778,20123461400,'Compuesto Farmacologico'),(23,9.01,6,19,1,2,20123446781,20123460100,'Compuesto Farmacologico'),(24,3.03,6,7,16,7,2012354787,19278279337,'Compuesto Farmacologico'),(25,3.03,6,5,10,3,20123456778,20123459900,'Compuesto Farmacologico'),(26,3.03,6,12,19,9,29389825768,20123461600,'Compuesto Farmacologico'),(27,7.01,6,1,9,6,20123456785,20123456800,'Compuesto Farmacologico'),(28,4.02,6,2,20,10,29826483628,20123459900,'Compuesto Farmacologico'),(29,6.04,6,24,10,12,20123464979,20123461000,'Compuesto Farmacologico'),(30,7.01,6,15,17,4,20398945783,20123456778,'Compuesto Farmacologico'),(31,3.03,6,4,10,6,20123456782,20123458600,'Compuesto Farmacologico'),(32,10.03,6,23,7,15,20123455876,20123458700,'Compuesto Farmacologico'),(33,5.01,6,19,1,2,20123455876,20123456782,'Compuesto Farmacologico'),(34,6.04,6,7,16,7,20398945783,20123459500,'Compuesto Farmacologico'),(35,4.02,6,5,10,3,20123456782,20123457600,'Compuesto Farmacologico'),(36,9.01,6,12,19,9,20123487975,20123455876,'Compuesto Farmacologico'),(37,2.05,6,1,9,6,201239786,20123457700,'Compuesto Farmacologico'),(38,8.02,6,2,20,10,20123456782,29826483628,'Compuesto Farmacologico'),(39,2.05,6,24,10,12,20123464979,20123461700,'Compuesto Farmacologico'),(40,10.03,6,15,17,4,20398945783,20123459200,'Compuesto Farmacologico'),(41,2.05,6,4,10,6,20123487975,20123458900,'Compuesto Farmacologico'),(42,10.03,6,23,7,15,29389825768,20123461600,'Compuesto Farmacologico'),(43,1.01,6,19,1,2,20123464979,20123755484,'Compuesto Farmacologico'),(44,2.05,6,7,16,7,20123464979,34876927497,'Compuesto Farmacologico'),(45,7.01,6,5,10,3,29826483628,20123458400,'Compuesto Farmacologico'),(46,8.02,6,12,19,9,20123446781,20123460100,'Compuesto Farmacologico'),(47,9.01,6,1,9,6,34876927497,34876927497,'Compuesto Farmacologico'),(48,6.04,6,2,20,10,20123455876,89182836386,'Compuesto Farmacologico'),(49,9.01,6,24,10,12,20123446781,22389825768,'Compuesto Farmacologico'),(50,8.02,6,15,17,4,20123464979,19278279337,'Compuesto Farmacologico'),(51,7.01,2,23,4,10,20398945783,83589213670,'Practica diagnostica'),(52,5.01,6,7,10,47,29389825768,74258034643,'Compuesto Farmacologico'),(54,8.02,6,4,13,8,20123456785,78227968102,'Compuesto Farmacologico'),(55,8.02,2,2,5,6,29826483628,36606271673,'Practica diagnostica'),(56,1.01,6,15,7,17,20123455876,72293936211,'Compuesto Farmacologico'),(60,8.02,6,6,12,6,20123455876,40257257204,'Compuesto Farmacologico'),(63,4.02,2,20,20,43,20398945783,34369642030,'Practica diagnostica'),(64,5.01,6,4,19,47,29389825768,96565599997,'Compuesto Farmacologico'),(66,5.01,6,20,2,21,29389825768,81467473769,'Compuesto Farmacologico'),(71,3.03,2,6,1,33,28827862892,20123455876,'Compuesto farmacologico'),(72,8.02,6,6,15,39,29389825768,20398945783,'Practica diagnostica'),(73,7.01,6,6,13,46,28827862892,2012345789,'Practica quirurgica'),(74,3.03,6,6,20,4,2012354787,62827386287,'Practica quirurgica'),(75,1.01,2,6,9,28,28827862892,20123456780,'Practica diagnostica'),(76,8.02,1,6,18,17,20123455876,20123458400,'Practica diagnostica'),(77,5.01,1,10,17,24,29389825768,20123458400,'Practica diagnostica'),(78,1.01,1,6,7,47,20123487975,29373827468,'Practica diagnostica'),(79,2.05,1,12,3,28,2012354787,22389825768,'Practica diagnostica'),(80,8.02,1,21,11,21,2012354787,48729473937,'Practica diagnostica'),(81,8.02,1,4,5,36,20123456785,89182836386,'Practica diagnostica'),(82,7.01,1,13,3,41,20123455876,20123458400,'Practica diagnostica'),(83,7.01,1,19,6,10,20123487975,48729473937,'Practica diagnostica'),(84,5.01,1,7,3,33,20123487975,22389825768,'Practica diagnostica'),(85,6.04,1,7,7,31,20123446781,22389825768,'Practica diagnostica'),(86,35.40,5,1,8,44,201239786,22345345896,'Practica quirurgica'),(87,37.50,5,1,4,10,34876927497,20123446781,'Practica quirurgica'),(88,38.40,5,25,8,47,20123455876,91080571907,'Practica quirurgica');
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
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
