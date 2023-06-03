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
-- Table structure for table `pasajero`
--

DROP TABLE IF EXISTS `pasajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasajero` (
  `nro_vuelo` int NOT NULL,
  `documento` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nro_vuelo`,`documento`),
  CONSTRAINT `fk_nro_vuelo` FOREIGN KEY (`nro_vuelo`) REFERENCES `vuelo` (`nro_vuelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasajero`
--

LOCK TABLES `pasajero` WRITE;
/*!40000 ALTER TABLE `pasajero` DISABLE KEYS */;
INSERT INTO `pasajero` VALUES (1,10000064,'Mariano Castro'),(2,90000009,'Agustina Herrera'),(5,10345678,'Andrés Castro'),(9,90000045,'Julieta Herrera'),(12,40456789,'María López'),(15,80345678,'Diego Ramírez'),(16,30000012,'Luciano Silva'),(17,90345678,'Pablo Díaz'),(18,30000048,'Santino Silva'),(19,90000036,'Tobías Díaz'),(20,40000067,'Olivia Ríos'),(21,70000043,'Catalina Gómez'),(22,10987654,'Pedro Sánchez'),(22,20000002,'Gonzalo López'),(22,90000027,'Valentina Herrera'),(23,60000015,'María Peralta'),(24,20000038,'Micaela López'),(32,90000063,'Isabella Herrera'),(33,40000076,'Lucas González'),(33,70000007,'Mariana Gómez'),(35,30345678,'Gabriel Silva'),(35,40000040,'Valentina González'),(36,30000030,'Sebastián Silva'),(36,40000004,'Javier González'),(36,60000060,'Thiago Ramírez'),(36,70000070,'Joaquín Torres'),(36,90000018,'Bruno Díaz'),(37,60000051,'Valentina Peralta'),(38,90000054,'Matías Díaz'),(39,10000073,'Victoria Suárez'),(39,30000021,'Isabella Fernández'),(40,30000057,'Candela Fernández'),(42,30123456,'Laura Rodríguez'),(43,60000033,'Luna Peralta'),(45,30000066,'Facundo Silva'),(45,60345678,'Celeste Peralta'),(46,60000024,'Daniel Ramírez'),(49,20000011,'Luisa Méndez'),(51,20000047,'Martina Méndez'),(52,80000035,'Valeria Romero'),(53,80345678,'Marcela Romero'),(56,80000026,'Nicolás Sánchez'),(57,50000014,'Facundo Morales'),(59,60000042,'Ignacio Ramírez'),(59,60789012,'Ana Martínez'),(61,50000050,'Benjamín Morales'),(62,20000029,'Camila Méndez'),(63,60000006,'Ezequiel Ramírez'),(63,60000069,'Emma Peralta'),(64,80000017,'Sol Romero'),(65,80000062,'Mateo Sánchez'),(66,30000075,'Valentina Fernández'),(68,20345678,'Carolina Méndez'),(68,30000039,'Santiago Fernández'),(69,30000003,'Camila Fernández'),(69,50000059,'Victoria Martínez'),(70,50345678,'Hugo Morales'),(71,11245368,'Miguel Cardozo'),(71,11458979,'Jorge Lanata'),(71,31648546,'Luis Sandoval'),(71,41823462,'Alejandro Rios'),(71,80000053,'Juana Romero'),(72,20000020,'Maximiliano López'),(72,90000072,'Matías Díaz'),(73,20000056,'Felipe López'),(74,30987654,'Juan Pérez'),(76,50000032,'Felipe Morales'),(77,10000010,'Matías Castro'),(78,20000065,'Amelia Méndez'),(80,50000023,'Renata Martínez'),(81,90345678,'Lucía Herrera'),(84,10000046,'Tomás Castro'),(85,70000034,'Bautista Torres'),(86,70345678,'Federico Torres'),(88,20123456,'Carlos González'),(89,70000025,'Luciana Gómez'),(91,40000013,'Marina Ríos'),(92,80000044,'Francisco Sánchez'),(93,50678901,'Roberto Fernández'),(94,10000001,'Luciana Suárez'),(94,40000049,'Valentina Ríos'),(95,10000037,'Renata Suárez'),(96,10000028,'Joaquín Castro'),(97,50000068,'Lautaro Morales'),(97,80000008,'Alejandro Sánchez'),(98,70000016,'Julián Torres'),(98,70000061,'Valentina Gómez'),(99,70234567,'Sofía Gómez'),(100,11458979,'Jorge Lanata'),(100,20000074,'Benjamín López'),(100,31648546,'Luis Sandoval'),(100,40000031,'Abril Ríos'),(100,41823462,'Alejandro Rios'),(100,45678945,'Roberto Guitarra'),(101,50000005,'Florencia Martínez'),(102,50000041,'Emilia Martínez'),(103,40000022,'Emilio González'),(103,40000058,'Lucas González'),(104,40345678,'Valentina Ríos'),(104,70000052,'Marcos Torres'),(105,10000019,'Victoria Suárez'),(105,10000055,'Valentina Suárez'),(105,80000071,'Valentina Romero');
/*!40000 ALTER TABLE `pasajero` ENABLE KEYS */;
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
