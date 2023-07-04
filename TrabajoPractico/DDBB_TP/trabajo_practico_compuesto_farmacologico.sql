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
-- Table structure for table `compuesto_farmacologico`
--

DROP TABLE IF EXISTS `compuesto_farmacologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compuesto_farmacologico` (
  `id_tratamiento` int NOT NULL,
  `id_tipo_compuesto` int NOT NULL,
  `id_fabricante` smallint NOT NULL,
  `id_partida` int NOT NULL,
  `nro_lote` int NOT NULL,
  PRIMARY KEY (`id_tratamiento`),
  KEY `fk_id_tipo_compuesto` (`id_tipo_compuesto`),
  KEY `fk_id_fabricante` (`id_fabricante`),
  KEY `fk_id_partida_compuesto_idx` (`id_partida`),
  KEY `fk_nro_lote_idx` (`nro_lote`),
  CONSTRAINT `fk_id_fabricante` FOREIGN KEY (`id_fabricante`) REFERENCES `fabricante` (`id_fabricante`),
  CONSTRAINT `fk_id_partida_compuesto` FOREIGN KEY (`id_partida`) REFERENCES `lote` (`id_partida`),
  CONSTRAINT `fk_id_tipo_compuesto` FOREIGN KEY (`id_tipo_compuesto`) REFERENCES `tipo_compuesto` (`id_tipo_compuesto`),
  CONSTRAINT `fk_id_tratamiento_compuesto` FOREIGN KEY (`id_tratamiento`) REFERENCES `tratamiento` (`id_tratamiento`),
  CONSTRAINT `fk_nro_lote_compuesto` FOREIGN KEY (`nro_lote`) REFERENCES `lote` (`nro_lote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compuesto_farmacologico`
--

LOCK TABLES `compuesto_farmacologico` WRITE;
/*!40000 ALTER TABLE `compuesto_farmacologico` DISABLE KEYS */;
INSERT INTO `compuesto_farmacologico` VALUES (23,2,1000,1005,800),(25,2,1002,1005,700),(26,2,1004,1000,800),(27,2,1001,1000,500),(28,2,1002,1005,350),(29,2,1001,1008,350),(30,2,1001,1008,800),(31,2,1004,1005,500),(32,2,1001,1005,800),(33,2,1003,1005,500),(34,2,1001,1008,500),(36,2,1002,1005,700),(37,2,1002,1008,500),(38,2,1003,1000,800),(39,2,1004,1008,500),(40,2,1000,1000,700),(41,2,1003,1000,500),(42,2,1003,1000,800),(43,2,1002,1008,700),(48,2,1004,1000,800),(50,2,1003,1000,700);
/*!40000 ALTER TABLE `compuesto_farmacologico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-04  0:41:42
