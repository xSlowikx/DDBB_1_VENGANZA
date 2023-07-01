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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
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

-- Dump completed on 2023-07-01 13:54:07
