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
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `cod_art` int NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  PRIMARY KEY (`cod_art`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (1,'Harina',150.00),(2,'Pan',500.00),(3,'Jabon de ropa',700.00),(4,'Detergente de limon',500.00),(5,'Jabón en barra de aloe vera',900.00),(6,'Papel higiénico de algodón',350.00),(7,'Limpia vidrios con amoniaco',1200.00),(8,'Shampoo anticaspa',550.00),(9,'Comida para gatos de pollo',1400.00),(10,'Detergente en polvo para ropa',700.00),(11,'Cepillo de dientes de bambú',400.00),(12,'Lata de atún en aceite de oliva',1300.00),(13,'Galletas de avena y pasas',800.00),(14,'Jabón líquido de lavanda',600.00),(15,'Desodorante en aerosol',950.00),(16,'Comida para perros de carne y arroz',1200.00),(17,'Esponja de cocina de celulosa',350.00),(18,'Pasta de dientes blanqueadora',450.00),(19,'Lata de sopa de tomate',1400.00),(20,'Detergente multiusos',550.00),(21,'Toallas de papel absorbentes',400.00),(22,'Pañales desechables para bebés',900.00),(23,'Cereales de trigo integral',1000.00),(24,'Aire Acondicionado',1100.00),(25,'Aceite de Oliva',850.00),(26,'Arroz Integral',350.00),(27,'Azúcar Moreno',250.00),(28,'Almohada Antialérgica',600.00);
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
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
