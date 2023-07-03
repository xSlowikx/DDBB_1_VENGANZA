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
-- Table structure for table `zona_cuerpo`
--

DROP TABLE IF EXISTS `zona_cuerpo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zona_cuerpo` (
  `id_zona_cuerpo` tinyint NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_zona_cuerpo`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona_cuerpo`
--

LOCK TABLES `zona_cuerpo` WRITE;
/*!40000 ALTER TABLE `zona_cuerpo` DISABLE KEYS */;
INSERT INTO `zona_cuerpo` VALUES (1,'Cabeza'),(2,'Cuello'),(3,'Hombros'),(4,'Brazos'),(5,'Codos'),(6,'Muñecas'),(7,'Manos'),(8,'Pecho'),(9,'Espalda'),(10,'Abdomen'),(11,'Caderas'),(12,'Glúteos'),(13,'Piernas'),(14,'Rodillas'),(15,'Tobillos'),(16,'Pies'),(17,'Ojos'),(18,'Oídos'),(19,'Nariz'),(20,'Boca'),(21,'Dientes'),(22,'Lengua'),(23,'Garganta'),(24,'Pulmones'),(25,'Corazón'),(26,'Hígado'),(27,'Riñones'),(28,'Páncreas'),(29,'Vejiga'),(30,'Intestino delgado'),(31,'Intestino grueso'),(32,'Estómago'),(33,'Vesícula biliar'),(34,'Bazo'),(35,'Vasos sanguíneos'),(36,'Nervios periféricos'),(37,'Columna vertebral'),(38,'Cerebro'),(39,'Médula espinal'),(40,'Tiroides'),(41,'Adrenales'),(42,'Ovarios'),(43,'Testículos'),(44,'Útero'),(45,'Próstata'),(46,'Piel'),(47,'Músculos'),(48,'Tendones'),(49,'Linfáticos'),(50,'Articulaciones');
/*!40000 ALTER TABLE `zona_cuerpo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03  3:11:26
