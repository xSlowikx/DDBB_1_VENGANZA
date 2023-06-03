CREATE DATABASE  IF NOT EXISTS `ejercicio3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio3`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio3
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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `id_proveedor` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_id_proveedor` (`id_proveedor`),
  CONSTRAINT `fk_id_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (21,'Teléfono móvil','en stock',7),(22,'Tableta','en stock',5),(23,'Portátil','en stock',4),(24,'Smartwatch','en stock',2),(25,'Cámara digital','en stock',10),(26,'Altavoz Bluetooth','en stock',12),(27,'Impresora','en stock',9),(28,'Router','en stock',11),(29,'Monitor','en stock',6),(30,'Auriculares inalámbricos','en stock',3),(31,'Teclado','en stock',8),(32,'Mouse','en stock',1),(33,'Cargador portátil','en stock',14),(34,'Disco duro externo','en stock',13),(35,'Tarjeta de memoria','en stock',15),(36,'Cable HDMI','en stock',7),(37,'Webcam','en stock',5),(38,'Batería externa','en stock',4),(39,'Adaptador de corriente','en stock',2),(40,'Estuche para teléfono','en stock',10),(41,'Batidora de mano','en stock',1),(42,'Cafetera','en stock',3),(43,'Tostadora','en stock',6),(44,'Olla eléctrica','en stock',4),(45,'Licuadora','en stock',5),(46,'Exprimidor de jugos','en stock',2),(47,'Sartén antiadherente','en stock',8),(48,'Cuchillos de cocina','en stock',7),(49,'Tablas de cortar','en stock',9),(50,'Báscula de cocina','en stock',11),(51,'Tetera','en stock',1),(52,'Utensilios de cocina','en stock',3),(53,'Cacerolas','en stock',6),(54,'Molinillo de café','en stock',4),(55,'Hervidor de agua','en stock',5),(56,'Microondas','en stock',2),(57,'Freidora eléctrica','en stock',8),(58,'Exprimidor manual','en stock',7),(59,'Tazas y vasos','en stock',9),(60,'Cubiertos de cocina','en stock',11);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-03  0:23:40
