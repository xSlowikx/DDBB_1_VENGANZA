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
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `cod_prov` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `cod_ciu` int NOT NULL,
  `fecha_alta` date NOT NULL,
  PRIMARY KEY (`cod_prov`),
  KEY `fk_cod_ciu` (`cod_ciu`),
  CONSTRAINT `fk_cod_ciu` FOREIGN KEY (`cod_ciu`) REFERENCES `ciudad` (`cod_ciu`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Apple Inc.','Av. Corrientes 1234',6,'2001-01-01'),(2,'Microsoft Corporation','Calle Florida 5678',34,'2001-02-15'),(3,'Amazon.com, Inc.','Av. Suipacha 987',51,'2001-04-03'),(4,'Toyota Motor Corporation','Calle Lavalle 4321',23,'2001-06-12'),(5,'Samsung Electronics Co., Ltd.','Av. Libertador 5432',6,'2001-08-22'),(6,'Procter & Gamble Co.','Calle Alem 876',17,'2002-01-05'),(7,'Coca-Cola Company','Av. Corrientes 567',6,'2002-03-18'),(8,'Intel Corporation','Calle Maipú 3456',3,'2002-05-27'),(9,'Sony Corporation','Av. Santa Fe 789',51,'2002-09-08'),(10,'Nestlé S.A.','Calle Reconquista 6543',6,'2002-11-29'),(11,'Google LLC','Av. Corrientes 2468',6,'2003-01-14'),(12,'Facebook, Inc.','Calle Florida 9876',6,'2003-03-22'),(13,'IBM Corporation','Av. Santa Fe 654',26,'2003-06-02'),(14,'McDonald\'s Corporation','Calle Lavalle 8765',13,'2003-09-17'),(15,'Volkswagen AG','Av. Libertador 4321',45,'2004-02-09'),(16,'ABC Technologies','Calle Alem 123',5,'2004-05-25'),(17,'Netflix, Inc.','Av. Corrientes 987',51,'2004-08-11'),(18,'Fothonix','Calle Maipú 5678',18,'2004-10-28'),(19,'The Coca-Cola Company','Av. Santa Fe 234',42,'2005-03-01'),(20,'Fitito','Calle Florida 4321',10,'2005-06-13'),(21,'Toyota Motor Corporation','Calle Lavalle 6543',37,'2005-09-26'),(22,'Microsoft Corporation','Av. Libertador 876',20,'2006-01-07'),(23,'Nestlé S.A.','Calle Alem 5678',1,'2006-04-21'),(24,'Samsung Electronics Co., Ltd.','Av. Corrientes 432',19,'2006-08-04'),(25,'Apple Inc.','Calle Florida 7654',47,'2006-12-20'),(26,'Amazon.com, Inc.','Av. Santa Fe 876',51,'2007-04-06'),(27,'Google LLC','Calle Lavalle 8765',33,'2007-08-23'),(28,'IBM Corporation','Av. Libertador 9876',51,'2008-01-10'),(29,'Sony Corporation','Calle Maipú 1234',27,'2008-05-28'),(30,'HP Inc.','Av. Corrientes 9876',2,'2008-10-17'),(31,'Balcarce','Av. Suipacha 123',15,'2001-03-10'),(32,'Bananamovil','Calle Suipacha 456',22,'2001-06-18'),(33,'Chinoloco','Suipacha 789',7,'2001-09-27');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
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
